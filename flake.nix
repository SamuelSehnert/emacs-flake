{
  description = "To play around with emacs. Lisp + Nix?";

  inputs = { nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable"; };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      eachSystem = f:
        # webkitgtk broken for darwin. Sorry darwin users
        nixpkgs.lib.genAttrs [
          "aarch64-darwin"
          "aarch64-linux"
          "x86_64-darwin"
          "x86_64-linux"
        ]
          (system: f nixpkgs.legacyPackages.${system});

    in
    rec {
      formatter = eachSystem (pkgs: pkgs.nixpkgs-fmt);

      apps = eachSystem (pkgs: {
        default = {
          type = "app";
          program =
            let
              # This file exists to allow the dashboard to go away.
              # Only useful when using nix run and also not generally
              # useful, good proof of concept for now
              initFile = pkgs.writeText "init.el" ''
                ;; (setq inhibit-startup-message t)
              '';
            in
            "${
            pkgs.writeShellScriptBin "custom-emacs" ''
              ${packages.${pkgs.system}.default}/bin/emacs -l ${initFile}
            ''
          }/bin/custom-emacs";
        };
      });

      overlays.default = final: prev: {
        custom-emacs = packages.${prev.system}.default;
      };

      packages = eachSystem (pkgs: {
        default =
          let
            emacsPackage = pkgs.emacs29-pgtk;
            emacsWithPackages =
              (pkgs.emacsPackagesFor emacsPackage).emacsWithPackages;
            fileName = "default.el";
            myEmacsConfig =
              let
                parsed = builtins.foldl'
                  (acc: substring:
                    if pkgs.lib.strings.hasPrefix "pkgs" substring then
                      let
                        list = pkgs.lib.strings.splitString "." substring;
                        binaryPath = builtins.foldl' (acc: pkg: acc.${pkg}) pkgs (pkgs.lib.lists.remove "pkgs" list);
                      in
                      acc + "${binaryPath}"
                    else
                      acc + substring
                  ) ""
                  # This is an almost acceptable way to find the pkgs to inject.
                  # Better would be to regex match for ${pkgs.something}, but I lost the battle with regex for now
                  (pkgs.lib.strings.splitString "#!#" (builtins.readFile ./lisp/default.el));
              in
              pkgs.writeText fileName parsed;
          in
          emacsWithPackages (epkgs:
            (with epkgs; [
              (pkgs.runCommand fileName { } ''
                mkdir -p $out/share/emacs/site-lisp
                cp ${myEmacsConfig} $out/share/emacs/site-lisp/${fileName}
              '')

              # General
              evil
              evil-collection
              magit

              # General LSP
              lsp-mode
              company
              flycheck

              # Major modes - Langs
              nix-mode

              # UI things
              doom-modeline
              nerd-icons
              which-key
            ]));
      });
    };
}
