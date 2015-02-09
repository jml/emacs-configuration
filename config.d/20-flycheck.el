;; Enable flycheck globally

;; TODO: Wrap in req-package
(eval-after-load 'flycheck
  '(progn
     (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
     (add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)))

(add-hook 'after-init-hook #'global-flycheck-mode)
