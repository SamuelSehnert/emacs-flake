;; Default configuration for flake

;; Line numbers
(column-number-mode)
(global-display-line-numbers-mode t)
(dolist (mode '(term-mode-hook
                shell-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0) (evil-mode -1))))

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
(setq use-package-always-ensure nil) ; Make sure no packages are installed by emacs

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

