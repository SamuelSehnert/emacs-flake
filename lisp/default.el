;; Default configuration for flake

;; Line numbers
(column-number-mode)
(global-display-line-numbers-mode t)

;; (scroll-bar-mode -1)        ; Disable visible scrollbar
;; (tool-bar-mode -1)          ; Disable the toolbar
;; (tooltip-mode -1)           ; Disable tooltips
;; (set-fringe-mode 10)        ; Give some breathing room

;; (menu-bar-mode -1)          ; Disable the menu bar

(setq visible-bell t)

(set-face-attribute 'default nil :height 150) ; Font size

(load-theme 'wombat)

(require 'package)
(package-initialize 'noactivate)
(eval-when-compile
  (require 'use-package))
(setq use-package-always-ensure nil)

;; Major Modes
(use-package nix-mode
  :mode "\\.nix\\'")

(use-package lsp-mode
  :hook ((python-mode . lsp))
  :commands lsp)

;; UI Improvements
(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom
    (doom-modeline-height 20)
  )

