(defun nix-utils/build-binary (package-name &optional binary-name)
  "Build a Nix package and return the given binary-name path."
  (unless binary-name (setq binary-name package-name))
  (let ((formatted-string (format "nix build --no-link --print-out-paths nixpkgs#%s" package-name)))
    (let ((pathout (shell-command-to-string formatted-string)))
      (let ((string-split (split-string (string-trim pathout) "\n")))
        (let ((final-path (car (last string-split))))
          (let ((binary-path (concat final-path (format "/bin/%s" binary-name))))
            (if (file-exists-p binary-path)
                binary-path
              (error (format "Package (%s) doesn't contain binary (%s)" package-name binary-name)))))))))


(defun custom/reset-symbl (symbl)
  "Reset SYMBL to its standard value."
  (interactive ;; This (interactive) was ripped directly from 'describe-symbol function
   (let* ((v-or-f (symbol-at-point))
          (found (if v-or-f (cl-some (lambda (x) (funcall (nth 1 x) v-or-f))
                                     describe-symbol-backends)))
          (v-or-f (if found v-or-f (function-called-at-point)))
          (found (or found v-or-f))
          (enable-recursive-minibuffers t)
          (val (completing-read (format-prompt "Describe symbol"
                                               (and found v-or-f))
				#'help--symbol-completion-table
				(lambda (vv)
                                  (cl-some (lambda (x) (funcall (nth 1 x) vv))
                                           describe-symbol-backends))
				t nil nil
				(if found (symbol-name v-or-f)))))
     (list (if (equal val "")
	       (or v-or-f "") (intern val)))))
  (set symbl (eval (car (get symbl 'standard-value)))))

;; Basic Options
(load-theme 'tango-dark t)
(setq-default indent-tabs-mode nil) ; Use spaces instead of tabs
(set-fringe-mode 10) ; Breathing room

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq display-line-numbers 'relative)

;; Generate paired things
(add-hook 'prog-mode-hook #'smartparens-mode)
(add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)
(require 'smartparens-config)

;; General
(cua-mode nil)

;; Use ibuffer instead of default "show all buffers"
(global-set-key (kbd "C-x C-b") #'ibuffer)

;; No more annoying backup files
(setq make-backup-files nil)

(use-package which-key)
(setq which-key-idle-delay 0.2)
(which-key-mode)

(use-package magit)
(setq magit-git-executable (nix-utils/build-binary "git"))
(global-diff-hl-mode)
(add-hook 'magit-pre-refresh-hook 'diff-hl-magit-pre-refresh)
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
(global-blamer-mode 1)

(use-package projectile)
(projectile-mode +1)
;(setq ripgrep-executable "${pkgs.ripgrep}/bin/rg")
(if (string-equal "darwin" (symbol-name system-type))
    (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(setq evil-want-integration t
      evil-want-keybinding nil)
(evil-mode 1)
(global-evil-surround-mode 1)
(evil-collection-init)
(evil-commentary-mode)

(use-package vertico)
(vertico-mode t)

(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package nix-mode)
;(setq nix-nixfmt-bin "${pkgs.nixfmt}/bin/nixfmt")

(use-package eglot)
;(add-to-list 'eglot-server-programs '(nix-mode . ("${pkgs.nil}/bin/nil")))
;(add-to-list 'eglot-server-programs '(ruby-mode . ("${pkgs.rubyPackages.solargraph}/bin/solargraph" "socket" "--port" :autoport)))
;(add-to-list 'eglot-server-programs '((js-mode javascript-mode typescript-mode rjsx-mode) . ("${pkgs.nodePackages.typescript-language-server}/bin/typescript-language-server" "--stdio")))

;Javascript/typescript
(setq js-indent-level 2)

;; Only setup rainbow-delimiters-mode for programming modes
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Note that the built-in `describe-function' includes both functions
;; and macros. `helpful-function' is functions only, so we provide
;; `helpful-callable' as a drop-in replacement.
(global-set-key (kbd "C-h f") #'helpful-callable)

(global-set-key (kbd "C-h v") #'helpful-variable)
(global-set-key (kbd "C-h k") #'helpful-key)
(global-set-key (kbd "C-h x") #'helpful-command)

;; Lookup the current symbol at point. C-c C-d is a common keybinding
;; for this in lisp modes.
(global-set-key (kbd "C-c C-d") #'helpful-at-point)

;; Look up *F*unctions (excludes macros).
;; By default, C-h F is bound to `Info-goto-emacs-command-node'. Helpful
;; already links to the manual, if a function is referenced there.
(global-set-key (kbd "C-h F") #'helpful-function)

;; Completion when typing
(use-package company)
(add-hook 'prog-mode-hook 'company-mode)
(setq company-minimum-prefix-length 1
      company-idle-delay 0.0)

;; Darwin specific things
(if (string-equal "darwin" (symbol-name system-type))
    (progn
      ;; Used to make MacOS to get the correct $PATH
      (exec-path-from-shell-initialize)
      (setq mac-command-modifier 'meta
            mac-option-modifier 'super
            mac-control-modifier 'control
            ns-function-modifier 'hyper)))

;; Setup tabs
(tab-bar-mode)

;; Hook dashboard into the startup
(dashboard-setup-startup-hook)

;; Set Control-U to clear the buffer, but only when in a minibuffer
(define-key minibuffer-local-map (kbd "C-u") #'delete-minibuffer-contents)

