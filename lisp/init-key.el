(use-package evil-leader
  :config
  (global-evil-leader-mode t)
  (evil-leader/set-leader ",")
  (evil-leader/set-key-for-mode 'rust-mode
    "cr" 'cargo-process-run
    "ct" 'cargo-process-test)
  (evil-leader/set-key
    "xc" 'save-buffers-kill-terminal
    "xb" 'consult-buffer
    "s"  'consult-line
    "ci" 'evilnc-comment-or-uncomment-lines
    "b"  'consult-buffer
    "ff" 'find-file
    "," 'excute-extended-command
    "1" 'winum-select-window-1
    "2" 'winum-select-window-2
    "3" 'winum-select-window-3
    "4" 'winum-select-window-4
    "fp" 'consult-ripgrep
    "xs" 'save-file 
    "w" 'save-buffer))

(provide 'init-key)
