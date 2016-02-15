(req-package purescript-mode
  :require (psci)
  :config (add-hook 'purescript-mode-hook #'haskell-indentation-mode))
