(req-package god-mode
  :bind ("<escape>" . god-mode-all)
  :config
  (progn
    (defun my-update-cursor ()
      (setq cursor-type (if (or god-local-mode buffer-read-only)
                            'bar
                          'box)))
    (add-hook 'god-mode-enabled-hook 'my-update-cursor)
    (add-hook 'god-mode-disabled-hook 'my-update-cursor))

  (define-key god-local-mode-map (kbd ".") 'repeat))
