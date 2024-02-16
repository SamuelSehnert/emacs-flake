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
          config = ./init.el;
          defaultInitFile = true;
          package =
            let emacsRuntimeDeps = with pkgs; [ nixfmt ];
            in pkgs.emacs-unstable.overrideAttrs (prev: {
              nativeBuildInputs =
                (if (builtins.hasAttr "nativeBuildInputs" prev) then
                  prev.nativeBuildInputs
                else
                  [ ]) ++ [ pkgs.makeWrapper ];
              postFixup = ''
                ${if (builtins.hasAttr "postFixup" prev) then
                  prev.postFixup
                else
                  ""}
                wrapProgram $out/bin/emacs \
                --prefix PATH : ${pkgs.lib.makeBinPath emacsRuntimeDeps} \
                --add-flags "--no-splash"
              '';
            });
        };
      });
    };
}
