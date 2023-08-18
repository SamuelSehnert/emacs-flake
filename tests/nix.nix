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
            mypkgs = {
              nixfmt = pkgs.nixfmt;
              git = pkgs.git;

              solargraph = pkgs.solargraph;
              nil = pkgs.nil;
            };
            split = pkgs.lib.strings.splitString ";#"
              (builtins.readFile ./lisp/init.el);
            parsed = builtins.foldl' (acc: substring:
              if pkgs.lib.strings.hasPrefix "NIX" substring then
                let
                  # Pull out the NIX prefix
                  removed = pkgs.lib.strings.removePrefix "NIX" substring;
                  # Split on commenting ;'s and concat
                  # This allows for the nix-injections to span multiple lines
                  inter = builtins.concatStringsSep "\n"
                    (pkgs.lib.strings.splitString ";" removed);
                  # Split on $ to find which packages are wanting to be injected
                  split = pkgs.lib.strings.splitString "$" inter;
                  output = builtins.foldl' (acc: substring:
                    if pkgs.lib.strings.hasPrefix "pkgs." substring then
                      let pkg = pkgs.lib.strings.removePrefix "pkgs." substring;
                      in acc + "${pkgs.lib.getExe mypkgs.${pkg}}"
                    else
                      acc + substring) "" split;
                in acc + output
              else
                acc + substring) "" split;
          in parsed;

          extraEmacsPackages = epkgs:
            with epkgs; [
              nix-mode
              evil
              which-key
              magit
              vertico
              consult
            ];
        };
      });
    };
}
