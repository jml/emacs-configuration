;; Make all "yes or no" prompts "y or n"
(fset 'yes-or-no-p 'y-or-n-p)

;; One line scrolling
(setq scroll-step 1)

;; Fill width
(setq-default fill-column 78)

;; I don't use Firefox, I use Chrome.

;; TODO: Make this work correctly on OS X, which doesn't have a google-chrome
;; binary.
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")

(put 'narrow-to-region 'disabled nil)

;; Load dired-x.
(add-hook 'dired-load-hook (lambda () (load "dired-x")))

;; Sign messages by default.
(add-hook 'message-setup-hook 'mml-secure-sign-pgpmime)

;; Allow any value for the test-case-name buffer local variable
(put 'test-case-name 'safe-local-variable 'identity)

(put 'scroll-left 'disabled nil)

;; Disable the damn bell
(setq ring-bell-function 'ignore)
