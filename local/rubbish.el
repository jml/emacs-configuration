;; CSS
(autoload 'css-mode "css-mode" "Mode for editing CSS files" t)

;; Javascript
(autoload 'javascript-mode' "javascript-mode" "Mode for editing JavaScript files" t)

;; File associations
(nconc auto-mode-alist '(("\\.py$" . python-mode)
                         ("\\.tac$" . python-mode)
                         ("\\.org$" . org-mode)
                         ("\\.css$" . css-mode)
                         ("\\.js$" . javascript-mode)
                         ("\\.zcml$" . xml-mode)
                         ("\\.go$" . go-mode)))

;; Improve the indentation in Javascript
(setq c-style-alist
      '(("actual-python"
         (indent-tabs-mode . nil)
         (fill-column . 79)
         (c-basic-offset . 8)
         (c-offsets-alist
          (substatement-open . 0)
          (inextern-lang . 0)
          (arglist-intro . +)
          (knr-argdecl-intro . +))
         (c-hanging-braces-alist
          (brace-list-open)
          (brace-list-intro)
          (brace-list-close)
          (brace-entry-open)
          (substatement-open after)
          (block-close . c-snug-do-while))
         (c-block-comment-prefix . ""))))
;; Last good


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :family "Ubuntu Mono"))))
 '(dired-directory ((t (:foreground "blue" :weight bold))))
 '(flymake-errline ((((class color) (background light)) (:underline "red"))))
 '(font-lock-builtin-face ((((class color) (min-colors 88) (background light)) (:foreground "darkred" :weight bold))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background light)) (:foreground "#007070" :slant italic))))
 '(font-lock-doc-face ((t (:inherit font-lock-comment-face))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background light)) (:foreground "blue" :weight bold))))
 '(font-lock-keyword-face ((((class color) (min-colors 88) (background light)) (:weight bold))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background light)) (:foreground "#007070"))))
 '(font-lock-type-face ((((class color) (min-colors 88) (background light)) (:foreground "red" :weight bold))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background light)) (:foreground "red"))))
 '(font-lock-warning-face ((((class color) (min-colors 88) (background light)) (:background "red"))))
 '(org-headline-done ((((class color) (min-colors 16) (background light)) (:foreground "ForestGreen" :strike-through t))))
 '(org-level-1 ((((class color) (background light)) (:weight bold :height 1.5))))
 '(org-level-2 ((((class color) (background light)) nil)))
 '(org-level-3 ((((class color) (background light)) nil)))
 '(py-builtins-face ((t (:inherit font-lock-builtin-face))) t)
 '(py-decorators-face ((t (:foreground "red" :weight bold))) t)
 '(py-pseudo-keyword-face ((t (:inherit font-lock-keyword-face))) t))
