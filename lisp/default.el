;;; emacs-flake --- Default configuration for flake

;;; Commentary:

;;; Code:

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

(load-theme 'wombat)
(set-face-background 'default "#111")

(global-set-key (kbd "C-x C-c") (lambda () (interactive)(message "STOP CLOSING THE ENTIRE PROGRAM!")))

(setq indent-tabs-mode nil)

(require 'package)
    (package-initialize 'noactivate)
    (eval-when-compile
    (require 'use-package))
    (setq use-package-always-ensure nil) ;; Force Nix to deal with packages

;; General
(use-package magit
    :config (setq magit-git-executable "#!#pkgs.git#!#/bin/git"))

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
(evil-ex-define-cmd "q[uit]" (lambda () (interactive) (message "STOP TRYING TO EXIT!!"))) ;; Disable :q because I keep quitting by accident

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
(setq read-process-output-max (* 1024 1024 10)) ;; 10MB
(setq create-lockfiles nil)

(use-package company
  :hook (prog-mode . company-mode)
  :init (setq company-minimum-prefix-length 1
	      company-idle-delay 0.0))

(use-package flycheck
  :init (global-flycheck-mode))

;; Major Modes
(use-package nix-mode
  :mode ("\\.nix\\'" . nix-mode)
  :hook (nix-mode . lsp-deferred)
  :init (setq nix-nixfmt-bin "#!#pkgs.nixfmt#!#/bin/nixfmt"
	      lsp-nix-nil-server-path "#!#pkgs.nil#!#/bin/nil"))

(use-package python-mode
  :mode ("\\.py\\'" . python-mode)
  :hook (python-mode . lsp-deferred)
  :init (setq lsp-pylsp-server-command "#!#pkgs.python311Packages.python-lsp-server#!#/bin/pylsp"
              python-check-command "#!#pkgs.python311Packages.pyflakes#!#/bin/pyflakes"))

(use-package ruby-mode
  :mode ("\\.rb\\'" . ruby-mode)
  :hook (ruby-mode . lsp-deferred)
  :init (setq lsp-solargraph-server-command '("#!#pkgs.solargraph#!#/bin/solargraph" "stdio")))

;;; default.el ends here
