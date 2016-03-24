;; Enable flycheck globally

(req-package flycheck
  :require (flycheck-purescript)
  :config
  (progn
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
    (add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)
    (add-hook 'flycheck-mode-hook #'flycheck-purescript-setup)
    (add-hook 'after-init-hook #'global-flycheck-mode)))
