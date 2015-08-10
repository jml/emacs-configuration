;; Enable flycheck globally

(req-package flycheck
  :config
  (progn
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
    (add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)
    (add-hook 'after-init-hook #'global-flycheck-mode)
    (flycheck-define-checker python-pylint
      "A Python syntax and style checker using Pylint.

This syntax checker requires Pylint 1.0 or newer.

Mostly the same as the flycheck-provided python-pylint checker,
but uses SYMBOL rather than MSG-ID, because honestly what the
hell is up with using a number for something a human is supposed
to understand.

See URL `http://www.pylint.org/'."
      ;; -r n disables the scoring report
      :command ("pylint" "-r" "n"
                "--msg-template" "{path}:{line}:{column}:{C}:{symbol}:{msg}"
                (config-file "--rcfile" flycheck-pylintrc)
                ;; Need `source-inplace' for relative imports (e.g. `from .foo
                ;; import bar'), see https://github.com/flycheck/flycheck/issues/280
                source-inplace)
      :error-filter
      (lambda (errors)
        (flycheck-sanitize-errors (flycheck-increment-error-columns errors)))
      :error-patterns
      ((error line-start (file-name) ":" line ":" column ":"
              (or "E" "F") ":"
              (id (one-or-more (not (any ":")))) ":"
              (message) line-end)
       (warning line-start (file-name) ":" line ":" column ":"
                (or "W" "R") ":"
                (id (one-or-more (not (any ":")))) ":"
                (message) line-end)
       (info line-start (file-name) ":" line ":" column ":"
             "C:" (id (one-or-more (not (any ":")))) ":"
             (message) line-end))
      :modes python-mode)))


(req-package flycheck-pyflakes
  :require (flycheck)
  :config (progn
            (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
            (add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)
            (add-hook 'after-init-hook #'global-flycheck-mode)
            (flycheck-add-next-checker 'python-pyflakes 'python-pylint)))
