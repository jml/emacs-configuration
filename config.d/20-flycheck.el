;; Enable flycheck globally

(add-hook 'after-init-hook #'global-flycheck-mode)

(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)
