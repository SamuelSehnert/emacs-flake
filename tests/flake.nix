{
  description = "To play around with emacs. Lisp + Nix?";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    emacs-unstable = {
      url = "github:nix-community/emacs-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, emacs-unstable, ... }@inputs:
    let
      eachSystem = f:
        # webkitgtk broken for darwin. Sorry darwin users
        nixpkgs.lib.genAttrs [
          # "aarch64-darwin"
          "aarch64-linux"
          # "x86_64-darwin"
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
          filetest = "default.el";
          myEmacsConfig =
            pkgs.writeText filetest (builtins.readFile ./lisp/default.el);
        in emacsWithPackages (epkgs:
          (with epkgs.melpaStablePackages; [
            (pkgs.runCommand filetest { } ''
              mkdir -p $out/share/emacs/site-lisp
              cp ${myEmacsConfig} $out/share/emacs/site-lisp/${filetest}
            '')
            use-package
            nix-mode
          ]));
      });
    };
}
