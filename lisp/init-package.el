(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("nongnu" . "http://mirrors.ustc.edu.cn/elpa/nongnu/")))

(require 'package)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))


;; Setup `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(use-package gcmh
	     :init
	     (gcmh-mode 1))

(use-package company
	     :hook (after-init . global-company-mode)
	     :bind (:map company-active-map
			 ("C-n" . company-select-next)
			 ("C-p" . company-select-previous)))

(use-package wgrep
    :config
    (setq wgrep-auto-save-buffer t))

(use-package winum
	     :config
	     (winum-mode))

(use-package yasnippet
	     :defer 0.1
	     :ensure t
	     :custom
	     (yas-prompt-functions '(yas-completing-prompt))
	     :config
	     (yas-reload-all)
	     :hook
	     (prog-mode . yas-minor-mode)
	     (org-mode   . yas-minor-mode)
	     (erlang-mode  . yas-minor-mode)
	     (rust-mode  . yas-minor-mode))


(use-package yasnippet-snippets
	     :ensure t
	     :after yasnippet)


(use-package smartparens-config
	     :ensure smartparens
	     :config
	     (add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)
	     (add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)
	     (show-smartparens-global-mode t))


(use-package consult)

(use-package embark
  :after consult
    :config
    (global-set-key (kbd "C-;") 'embark-act)
    (setq prefix-help-command 'embark-prefix-help-command))

(use-package embark-consult
  :after embark
  :config
  :hook
  (embark-collect-mode-hook . consult-preview-at-point-mode))


(use-package vertico
  :config
  (vertico-mode t))

(use-package keycast
  :config
  (keycast-mode t))


(use-package orderless
 :config
 (setq completion-styles '(orderless)))

(use-package evil
  :init
    (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
    (setq evil-want-keybinding nil)
  :config
    (define-key evil-visual-state-map (kbd "v") 'er/expand-region)
    (evil-mode t))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package evil-escape
  :defer nil
  :config
  (evil-escape-mode t)
  (setq-default evil-escape-key-sequence "kj")
  (setq-default evil-escape-delay 0.2))


(use-package evil-nerd-commenter)
(use-package expand-region)

(use-package monokai-theme
  :config
  (load-theme 'monokai 1))

(use-package doom-modeline
      :hook (after-init . doom-modeline-init))

(provide 'init-package)
