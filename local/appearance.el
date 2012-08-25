;; Control the appearance of Emacs
(provide 'appearance)

;; Use the 'monokai' theme, because I like it.
;;
;; XXX: Not exactly sure why this doesn't seem to work when I put it in
;; customize.
(load-theme 'monokai)

;; Don't show the startup screen
(setq inhibit-startup-message t)
