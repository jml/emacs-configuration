
(req-package haskell-mode
  :require (haskell-process ghc-nix)
  :config (progn
            (add-hook 'haskell-mode-hook #'turn-on-haskell-indentation)
            (add-hook 'haskell-mode-hook #'use-nix-ghc-in-flycheck)))
