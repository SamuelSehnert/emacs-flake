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
            myEmacsConfig = pkgs.writeText fileName
              ((builtins.readFile ./lisp/default.el) + ''
              (use-package evil
                :init
                (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
                (setq evil-want-keybinding nil)
                :config
                (evil-mode 1))

              (use-package evil-collection
                :after evil
                :config
                (evil-collection-init))

                ;; LSP Things
                (use-package lsp-mode
                  :commands (lsp lsp-deferred)
                  :init (setq lsp-keymap-prefix "C-c l")
                  :config (lsp-enable-which-key-integration t))
                ;; LSP things to make sure it has enough resources
                (setq gc-cons-threshold 100000000)
                (setq read-process-output-max (* 1024 1024 5)) ;; 5MB

                (use-package company
                  :hook (prog-mode . company-mode)
                  :init (setq company-minimum-prefix-length 1
                    company-idle-delay 0.0))

                (use-package flycheck
                  :init (
                    global-flycheck-mode
                  ))

                ;; Major Modes
                (use-package nix-mode
                  :mode ("\\.nix\\'" . nix-mode)
                  :hook (nix-mode . lsp-deferred)
                  :init (setq nix-nixfmt-bin "${pkgs.lib.getExe pkgs.nixfmt}"
                        lsp-nix-nil-server-path "${pkgs.lib.getExe pkgs.nil}"))
              '');
          in
          emacsWithPackages (epkgs:
            (with epkgs; [
              (pkgs.runCommand fileName { } ''
                mkdir -p $out/share/emacs/site-lisp
                cp ${myEmacsConfig} $out/share/emacs/site-lisp/${fileName}
              '')
              evil
              evil-collection
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
