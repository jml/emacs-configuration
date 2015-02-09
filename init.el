;; Load third-party plugins.  This has to come first because other
;; things depend on libraries being there.

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(pallet-mode t)
(require 'req-package)


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


;; Configuration that's appropriate in all the places I use Emacs.
(load-directory (expand-file-name "~/.emacs.d/config.d"))

;; Configuration that's only appropriate in this installation.
(load-directory (expand-file-name "~/.emacs.d/local.d"))
