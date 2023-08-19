{
  description = "To play around with emacs. Lisp + Nix?";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    emacs-overlay = {
      url = "github:nix-community/emacs-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, emacs-overlay }:
    let
      eachSystem = f:
        nixpkgs.lib.genAttrs [
          "aarch64-darwin"
          "aarch64-linux"
          "x86_64-darwin"
          "x86_64-linux"
        ] (system:
          f (import nixpkgs {
            inherit system;
            overlays = [ emacs-overlay.overlay ];
          }));

    in rec {
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
        default = pkgs.emacsWithPackagesFromUsePackage {
          package = pkgs.emacs29;
          defaultInitFile = true;

          config = let
            filename = ./lisp/init.el;
            split =
              pkgs.lib.strings.splitString "\n" (builtins.readFile filename);
          in builtins.foldl' (acc: line:
            let
              regex = ".*(\\$\\{pkgs\\..*}).*";
              match = builtins.match regex line;
              injection = if match != null then
                let
                  matchSingle = builtins.head match;
                  splitLine = pkgs.lib.strings.splitString matchSingle line;
                  binary = let
                    removePrefix = pkgs.lib.strings.removePrefix;
                    removeSuffix = pkgs.lib.strings.removeSuffix;
                    pkgString =
                      removePrefix "\${pkgs." (removeSuffix "}" matchSingle);
                    splitPkg = pkgs.lib.strings.splitString "." pkgString;
                  in builtins.foldl' (acc: pkg: acc.${pkg}) pkgs splitPkg;
                  # A mystery for the ages. `sp` here is [ "string" ["string"] ] and I have
                  # no idea why... Thus we have to do (head (tail sp))
                in (pkgs.lib.strings.removePrefix ";" (builtins.head splitLine))
                + "${binary}" + ((builtins.head (builtins.tail splitLine)))
              else
                line;
            in acc + "\n" + injection) "" split;

          extraEmacsPackages = epkgs:
            with epkgs;
            (builtins.filter (p: p != null) [
              # General
              evil
              which-key
              magit

              # Completion
              vertico
              company

              # Programming
              lsp-mode
              nix-mode
              slime

              # MacOS
              (if (pkgs.lib.strings.hasInfix "darwin" pkgs.system) then
                exec-path-from-shell
              else
                null)
            ]);
        };
      });
    };
}
