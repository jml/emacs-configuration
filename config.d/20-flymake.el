;; Only run flymake on writeable files
(defun my-flymake-find-file-hook ()
  (if (file-writable-p buffer-file-name)
      (flymake-find-file-hook)))

(add-hook 'find-file-hook 'my-flymake-find-file-hook)
