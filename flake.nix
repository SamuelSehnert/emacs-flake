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
        ] (system: f nixpkgs.legacyPackages.${system});

    in rec {
      formatter = eachSystem (pkgs: pkgs.nixpkgs-fmt);

      apps = eachSystem (pkgs: {
        default = {
          type = "app";
          program = let
            # This file exists to allow the dashboard to go away.
            # Only useful when using nix run and also not generally
            # useful, good proof of concept for now
            initFile = pkgs.writeText "init.el" ''
              ;; (setq inhibit-startup-message t)
            '';
          in "${
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
        default = let
          emacsPackage = pkgs.emacs29-pgtk;
          emacsWithPackages =
            (pkgs.emacsPackagesFor emacsPackage).emacsWithPackages;
          fileName = "default.el";
          lispConfig = import ./init.nix;
          myEmacsConfig = pkgs.writeText fileName (lispConfig { } pkgs);
        in emacsWithPackages (epkgs:
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
