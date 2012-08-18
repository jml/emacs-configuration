;; Load third-party plugins that aren't managed by 'package'.
(provide 'plugins)

;; Where all of my third-party plugins are installed.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins"))

(require 'package) ;; NB: Used for package management.
(require 'rst)

