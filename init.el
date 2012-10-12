;; Customize
(setq custom-file "~/.emacs.d/local/custom.el")
(load custom-file)


;; Configure load path for local settings.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/local"))


;; Load third-party plugins.  This has to come first because other
;; things depend on libraries being there.
(package-initialize)

;; Load manually-managed third-party plugins.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins"))
(require 'edit-server)


;; Load all of my local settings.
(require 'appearance)
(require 'interaction)
(require 'keybindings)
(require 'programming)
(require 'utilities)


;; Start emacs server
(server-start)

;; Start edit server (for Chrome integration)
(edit-server-start)
