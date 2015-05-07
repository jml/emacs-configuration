
(req-package haskell-mode
  :require (haskell-process haskell-interactive-mode)
  :config (progn
            (add-hook 'haskell-mode-hook #'turn-on-haskell-doc-mode)
            (add-hook 'haskell-mode-hook #'interactive-haskell-mode)
            (add-hook 'haskell-mode-hook #'turn-on-haskell-indentation)))
