{
  description = "To play around with emacs. Lisp + Nix?";

  inputs = { nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable"; };

  outputs = { self, nixpkgs }:
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
            overlays = [ ];
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
        default = let
          package = pkgs.emacs29;

          config = let
            filename = ./lisp/init.el;
            split =
              pkgs.lib.strings.splitString "\n" (builtins.readFile filename);
          in pkgs.writeText "default.el" (builtins.foldl' (acc: line:
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
            in acc + "\n" + injection) "" split);

          emacsPackages = epkgs:
            with epkgs;
            (builtins.filter (p: p != null) [
              # Configuration
              (pkgs.runCommand "default.el" { } ''
                mkdir -p $out/share/emacs/site-lisp
                cp ${config} $out/share/emacs/site-lisp/default.el
              '')

              # General
              vterm
              which-key
              helpful
              dashboard

              # Projectile
              projectile
              projectile-ripgrep

              # Evil
              evil
              evil-surround
              evil-collection
              evil-commentary
              evil-smartparens

              # Git
              magit
              diff-hl
              blamer

              # Completion
              vertico
              company
              orderless

              # Programming
              rainbow-delimiters
              smartparens
              nix-mode
              rjsx-mode

              # MacOS
              (if pkgs.stdenv.isDarwin then exec-path-from-shell else null)
            ]);
        in (pkgs.emacsPackagesFor package).emacsWithPackages emacsPackages;
      });
    };
}
