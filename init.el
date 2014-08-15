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
(setq custom-file "~/.emacs.d/local/custom.el")
(load custom-file)


(setq temporary-file-directory "~/.emacs.d/temp")
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


;; Configure load path for local settings.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/local"))


;; Load all of my local settings.
(require 'appearance)
(require 'interaction)
(require 'keybindings)
(require 'programming)
(require 'utilities)


(add-to-list 'load-path (expand-file-name "~/src/google-emacs/elisp"))

(require 'google)
(remove-hook 'find-file-hooks 'p4-find-file-hook)
(remove-hook 'find-file-hooks 'google-load-p4-if-useful-hook)
