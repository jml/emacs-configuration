(defun turn-on-paredit () (paredit-mode +1))

(add-hook 'clojure-mode-hook 'turn-on-paredit)
(add-hook 'slime-repl-mode-hook 'turn-on-paredit)
(add-hook 'emacs-lisp-mode-hook 'turn-on-paredit)
