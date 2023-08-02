;; Basic Options
(load-theme 'tango-dark t)
(setq-default indent-tabs-mode nil) ; Use spaces instead of tabs
(set-fringe-mode 10) ; Breathing room

(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(use-package which-key)
(setq which-key-idle-delay 0.2)
(which-key-mode)

(use-package magit)
;#NIX(setq magit-git-executable "$pkgs.git$");#

(use-package nix-mode)
;#NIX(setq nix-nixfmt-bin "$pkgs.nixfmt$");#

(use-package evil)
(add-hook 'prog-mode-hook 'evil-local-mode) ; Only turn on evil for programming

(use-package vertico)
(vertico-mode t)

(use-package consult)

(use-package eglot)
;#NIX(setq eglot-server-programs '((ruby-mode . ("$pkgs.solargraph$" "socket" "--port" :autoport))
;                                  (nix-mode  . ("$pkgs.nil$"))));#

(if (string-equal "darwin" (symbol-name system-type))
    (exec-path-from-shell-initialize))
