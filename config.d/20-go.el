(req-package go-mode
  :config (add-hook 'before-save-hook 'gofmt-before-save))
