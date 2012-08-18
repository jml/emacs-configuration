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
