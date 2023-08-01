(set-fringe-mode 10)

(add-hook 'prog-mode-hook 'global-display-line-numbers-mode)

(use-package which-key)
(setq which-key-idle-delay 0.2)
(which-key-mode)

(use-package magit)
;#NIX(setq magit-git-executable "$pkgs.git$");#

(use-package nix-mode)
;#NIX(setq nix-nixfmt-bin "$pkgs.nixfmt$");#

(use-package evil)
(add-hook 'prog-mode-hook 'evil-local-mode) ; Only turn on evil for programming
