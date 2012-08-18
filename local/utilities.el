;; Load any utilities that I wrote myself.
(provide 'utilities)

(defun load-directory (dir)
  "Load all the .el files in dir."
  (mapcar '(lambda (x)
             (load-file x))
          (directory-files dir t "\\.el$")))

(load-directory "~/.emacs.d/utilities/")
