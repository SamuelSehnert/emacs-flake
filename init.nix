config: pkgs: ''
    ;; Default configuration for flake

    ;; Line numbers
    (column-number-mode)
    (global-display-line-numbers-mode t)
    (dolist (mode '(term-mode-hook
                    shell-mode-hook
                    eshell-mode-hook))
    (add-hook mode (lambda () (display-line-numbers-mode 0))))

    ;; (scroll-bar-mode -1)        ; Disable visible scrollbar
    ;; (tool-bar-mode -1)          ; Disable the toolbar
    ;; (tooltip-mode -1)           ; Disable tooltips
    (set-fringe-mode 10)        ; Give some breathing room

    ;; (menu-bar-mode -1)          ; Disable the menu bar

    (setq visible-bell t)

    (set-face-attribute 'default nil :height 150) ; Font size

    (global-set-key (kbd "<escape>") 'keyboard-escape-quit) ; Because of VIM addiction

    (load-theme 'wombat)
    (set-face-background 'default "#111")

    (setq indent-tabs-mode nil)

    (require 'package)
        (package-initialize 'noactivate)
        (eval-when-compile
        (require 'use-package))
        (setq use-package-always-ensure nil)

    ;; General
    (use-package magit)

    ;; UI Improvements
    (use-package doom-modeline
        :init (doom-modeline-mode 1))

    (use-package nerd-icons
    :init (unless (find-font (font-spec :name nerd-icons-font-family))
        (nerd-icons-install-fonts t)))

    (use-package which-key
        :init (which-key-mode)
        :diminish which-key-mode
        :config (setq which-key-idle-delay 1))

    (use-package evil
        :init
            (setq evil-want-integration t)
            (setq evil-want-keybinding nil)
        :config
            (evil-mode 1))
    (evil-set-initial-state 'eshell-mode 'emacs)
    (evil-set-initial-state 'nix-repl-mode 'emacs)

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
''
