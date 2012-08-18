(provide 'keybindings)

;; Keybindings
(global-set-key "\M-g" 'goto-line)
(global-set-key "\C-m" 'newline-and-indent) ;; enter key indents
(global-set-key "\M-j" (lambda () (interactive) (delete-indentation 1)))
(global-set-key "\C-x\C-b" 'ibuffer-other-window)
(global-set-key "\M-n" (lambda () (interactive) (scroll-up 1)))
(global-set-key "\M-p" (lambda () (interactive) (scroll-down 1)))
