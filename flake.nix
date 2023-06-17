{
  description = "To play around with emacs. Lisp + Nix?";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    emacs-unstable = {
      url = "github:nix-community/emacs-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Packages
    nix-mode = {
      url = "github:NixOS/nix-mode";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { self
    , nixpkgs
    , emacs-unstable
    , ...
    } @ inputs:
    let
      eachSystem = f:
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
          program = "${packages.${pkgs.system}.default}/bin/emacs";
        };
      });

      overlays.default = final: prev: {
        custom-emacs = packages.${prev.system}.default;
      };

      packages = eachSystem (pkgs: {
        default =
          let
            emacsPackage = pkgs.emacs29-pgtk;
            emacsWithPackages = (pkgs.emacsPackagesFor emacsPackage).emacsWithPackages;
            fileName = "default.el";
            myEmacsConfig = pkgs.writeText fileName (builtins.concatStringsSep "\n" [
              (builtins.readFile ./lisp/init.el)
              (builtins.readFile ./lisp/evil.el)
            ]);
          in
          emacsWithPackages (epkgs: (with epkgs.melpaStablePackages; [
            (pkgs.runCommand fileName { } ''
              mkdir -p $out/share/emacs/site-lisp
              cp ${myEmacsConfig} $out/share/emacs/site-lisp/${fileName}
            '')
            use-package
            evil
          ]));
      });
    };
}
