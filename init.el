;; Customize
(setq custom-file "~/.emacs.d/local/custom.el")
(load custom-file)


;; Configure load path for local settings.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/local"))


(require 'appearance)
(require 'interaction)
(require 'keybindings)
(require 'plugins)
(require 'programming)
(require 'utilities)


;; Use package
(package-initialize)


;; Start emacs server
(server-start)
