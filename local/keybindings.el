(provide 'keybindings)

;; Keybindings
(global-set-key "\M-g" 'goto-line)
(global-set-key "\C-m" 'newline-and-indent) ;; enter key indents
(global-set-key "\M-j" (lambda () (interactive) (delete-indentation 1)))
(global-set-key "\C-x\C-b" 'ibuffer-other-window)
(global-set-key "\M-n" 'scroll-up-line)
(global-set-key "\M-p" 'scroll-down-line)
(global-set-key (kbd "C-x t") 'todotxt)
(global-set-key (kbd "\C-c g") 'magit-status)



(defun org-archive-done-tasks ()
  (interactive)
  (org-map-entries 'org-archive-subtree "TODO=\"DONE\"|TODO=\"CANCELLED\"" 'file))
