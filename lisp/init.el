;; Basic Options
(load-theme 'tango-dark t)
(setq-default indent-tabs-mode nil) ; Use spaces instead of tabs
(set-fringe-mode 10) ; Breathing room

(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Generate paired things
(electric-pair-mode t)

(cua-mode nil)

;; No more annoying backup files
(setq make-backup-files nil)

(use-package which-key)
(setq which-key-idle-delay 0.2)
(which-key-mode)

(use-package magit)
;(setq magit-git-executable "${pkgs.git}/bin/git")

(use-package projectile)
(projectile-mode +1)
;(setq ripgrep-executable "${pkgs.ripgrep}/bin/rg")
(if (string-equal "darwin" (symbol-name system-type))
    (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(use-package nix-mode)
;(setq nix-nixfmt-bin "${pkgs.nixfmt}/bin/nixfmt")

(use-package evil)
(add-hook 'prog-mode-hook 'evil-local-mode) ; Only turn on evil for programming
(evil-ex-define-cmd "q" 'kill-this-buffer)

(use-package vertico)
(vertico-mode t)

(use-package eglot)
(setq eglot-server-programs nil)
;(add-to-list 'eglot-server-programs '(nix-mode . ("${pkgs.nil}/bin/nil")))
;(add-to-list 'eglot-server-programs '(ruby-mode . ("${pkgs.rubyPackages.solargraph}/bin/solargraph" "socket" "--port" :autoport)))
;(add-to-list 'eglot-server-programs '((js-mode javascript-mode typescript-mode rjsx-mode) . ("${pkgs.nodePackages.typescript-language-server}/bin/typescript-language-server" "--stdio")))

;Javascript/typescript
(setq js-indent-level 2)

(use-package company)
(add-hook 'prog-mode-hook 'company-mode)
(setq company-minimum-prefix-length 1
      company-idle-delay 0.0)

(if (string-equal "darwin" (symbol-name system-type))
    (progn
      ;; Used to make MacOS to get the correct $PATH
      (exec-path-from-shell-initialize)
      (setq mac-command-modifier 'meta
            mac-option-modifier 'super
            mac-control-modifier 'control
            ns-function-modifier 'hyper)))

(defun fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen
                       (if (frame-parameter nil 'fullscreen) nil 'fullboth)))
