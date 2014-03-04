;; Load third-party plugins.  This has to come first because other
;; things depend on libraries being there.
(package-initialize)

;; Load manually-managed third-party plugins.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins"))

(defun blackout-on-tty (frame)
  (if (not (window-system frame))
      (set-face-background 'default "#000000" frame)))

(add-hook 'after-make-frame-functions 'blackout-on-tty)

;; Customize
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'load-directory)

(load-directory (expand-file-name "~/.emacs.d/config.d"))


;; Configure load path for local settings.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/local"))


;; Load all of my local settings.
(require 'programming)
(require 'utilities)
