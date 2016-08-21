
(req-package haskell-mode
  :require (haskell-process ghc-nix haskell-style)
  :config (progn
            (add-hook 'haskell-mode-hook #'turn-on-haskell-indentation)
            (add-hook 'haskell-mode-hook #'use-nix-ghc-in-flycheck)))


;; See also (add-hook 'haskell-mode-hook #'haskell-style) for switching on johanTibell style

;; TODO: hlint set up
;; TODO: hindent set up
;; TODO: intero (c.f. tom)
