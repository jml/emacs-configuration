;; Run pyflakes with flymake.
;; (when (load "flymake" t)
;;   (defun flymake-pyflakes-init ()
;;     (let* ((temp-file (flymake-init-create-temp-buffer-copy
;;                        'flymake-create-temp-inplace))
;;            (local-file (file-relative-name
;;                         temp-file
;;                         (file-name-directory buffer-file-name))))
;;       (list (expand-file-name "~/bin/pyflakes") (list local-file))))

;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.py\\'" flymake-pyflakes-init))

;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.tac\\'" flymake-pyflakes-init)))

(require 'flymake-python-pyflakes)
(setq flymake-python-pyflakes-executable "//anaconda/bin/pyflakes")
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

(setq auto-mode-alist (cons '("\\.tac$" . python-mode) auto-mode-alist))
