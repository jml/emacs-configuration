;; Customize
(setq custom-file "~/.emacs.d/local/custom.el")
(load custom-file)


;; Configure load path for local settings.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/local"))
(require 'appearance)
(require 'interaction)
(require 'keybindings)
(require 'plugins)
(require 'utilities)


;; Use package
(package-initialize)


;; Start emacs server
(server-start)

(defun turn-on-paredit () (paredit-mode +1))

(add-hook 'clojure-mode-hook 'turn-on-paredit)
(add-hook 'slime-repl-mode-hook 'turn-on-paredit)
(add-hook 'emacs-lisp-mode-hook 'turn-on-paredit)
