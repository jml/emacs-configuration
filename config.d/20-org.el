(require 'org)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-ca" 'org-agenda)


(set-face-attribute 'org-headline-done nil :foreground "#859900")
(set-face-attribute 'org-level-1 nil :foreground "#ffffff" :height 1.5)
(set-face-attribute 'org-level-2 nil :inherit 'outline-2 :foreground "#ffffff")
(set-face-attribute 'org-level-3 nil :inherit 'outline-3 :foreground "#ffffff")
