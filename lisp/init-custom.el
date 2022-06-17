(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(global-auto-revert-mode 1)
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq ring-bell-function 'ignore)
(fset 'yes-or-no-p 'y-or-n-p)

(setq-default cursor-type 'bar)

(show-paren-mode t)
(fringe-mode 10)

(global-linum-mode 1)
(setq display-line-numbers-width 30)

(setq cursor-type 'bar)
(global-hl-line-mode 1)
(setq inhibit-splash-screen 1)


;; (electric-indent-mode -1)
(set-face-attribute 'default nil
                    :family "CaskaydiaCove Nerd Font Mono"
                    :height 120
                    :weight 'normal
                    :width 'normal)

;; Set frame transparency
(setq initial-frame-alist (quote ((fullscreen . maximized))))
(set-frame-parameter (selected-frame) 'alpha '(90 . 90))
(add-to-list 'default-frame-alist '(alpha . (90 . 90)))


(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-init-file)
(provide 'init-custom)
