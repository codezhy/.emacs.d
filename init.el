(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-package)
(require 'init-custom)
(require 'init-key)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(org org-contrib monokai-theme embark-consult smartparens yasnippet-snippets yasnippet winum wgrep gcmh company evil-leader consult orderless keycast vertico expand-region evil-nerd-commenter evil-escape evil-collection evil use-package ##)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
