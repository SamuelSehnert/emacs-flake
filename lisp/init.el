;; Default configuration for flake

;; The following line is invalid in default.el.
;; 	I want to keep it here for reasons...
(setq inhibit-startup-message t)

;; Line numbers
(column-number-mode)
(global-display-line-numbers-mode t)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode -1)          ; Disable the menu bar

(setq visible-bell t)

(load-theme 'wombat)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)


;; allow the packages to manage themselves?
(require 'package)
(package-initialize 'noactivate)
(eval-when-compile
  (require 'use-package))

