{
  description = "To play around with emacs. Lisp + Nix?";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    emacs-overlay = { url = "github:nix-community/emacs-overlay"; };
  };

  outputs = { self, nixpkgs, emacs-overlay }:
    let
      eachSystem = f:
        nixpkgs.lib.genAttrs [
          "aarch64-darwin"
          "aarch64-linux"
          "x86_64-darwin"
          "x86_64-linux"
        ]
          (system:
            f (import nixpkgs {
              inherit system;
              overlays = [ emacs-overlay.overlay ];
            }));
    in
    rec {
      formatter = eachSystem (pkgs: pkgs.nixpkgs-fmt);

      overlays.default = final: prev: {
        custom-emacs = packages.${prev.system}.default;
      };

      packages = eachSystem (pkgs: {
        default = pkgs.emacsWithPackagesFromUsePackage {
          config = ./init.org;
          defaultInitFile = true;
          alwaysTangle = true;
          extraEmacsPackages = epkgs: [
            (epkgs.trivialBuild rec {
              ename = "ob-racket";
              pname = ename;
              version = "1";
              src = pkgs.fetchFromGitHub {
                owner = "hasu";
                repo = "emacs-ob-racket";
                rev = "9e3bcf1ac9d88f064203671314095b219f4d6be4";
                sha256 = "sha256-uHxt96ua4t0Pt9v5GxEhnkRhdZ8y0s/MHT6CvOik0N4=";
              };
              buildPhase = ":";
            })
          ];
          package =
            let
              emacsRuntimeDeps = with pkgs; [
                nixpkgs-fmt
                (
                  let racketSet = (import ./lib/racketWithPkgs) pkgs;
                  in (with racketSet; racketWithPkgs (with racketPkgs; [ sicp ]))
                )
              ];
            in
            pkgs.emacs29.overrideAttrs (prev:
              let
                overrideAppend = attr: overrideVal:
                  if builtins.hasAttr attr prev
                  then {
                    "list" = prev."${attr}" ++ overrideVal;
                    "string" = prev."${attr}" + "\n" + overrideVal;
                  }."${builtins.typeOf overrideVal}"
                  else overrideVal;
              in
              {
                nativeBuildInputs = overrideAppend "nativeBuildInputs" [ pkgs.makeWrapper ];
                postFixup = overrideAppend "postFixup" ''
                  wrapProgram $out/bin/emacs \
                  --prefix PATH : ${pkgs.lib.makeBinPath emacsRuntimeDeps} \
                  --add-flags "--no-splash"
                '';
              });
        };
      });
    };
}
