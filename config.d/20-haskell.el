
(req-package haskell-mode
  :require (haskell-process)
  :config (progn
            (add-hook 'haskell-mode-hook #'turn-on-haskell-indentation)))
