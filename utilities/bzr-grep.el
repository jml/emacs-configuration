;; Copyright (c) 2008-2009 Jonathan Lange, Matthew Lefkowitz
;;
;; Permission is hereby granted, free of charge, to any person obtaining
;; a copy of this software and associated documentation files (the
;; "Software"), to deal in the Software without restriction, including
;; without limitation the rights to use, copy, modify, merge, publish,
;; distribute, sublicense, and/or sell copies of the Software, and to
;; permit persons to whom the Software is furnished to do so, subject to
;; the following conditions:
;;
;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
;; LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
;; OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
;; WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


(require 'grep)

(defconst bzr-tools-grep-command
  "bzr ls -VR --kind=file --null | xargs -0 grep -In %s"
  "The command used for grepping files using bzr. See `bzr-tools-grep'.")


;; Run 'code' at the root of the branch which dirname is in.
(defmacro bzr-tools-at-branch-root (dirname &rest code)
  `(let ((default-directory (locate-dominating-file (expand-file-name ,dirname) ".bzr"))) ,@code))


(defun bzr-grep (expression dirname)
  "Search a branch for `expression'. If there's a C-u prefix, prompt for `dirname'."
  (interactive
   (let* ((regexp (grep-read-regexp))
          (dir (if (null current-prefix-arg)
                   default-directory
                 (read-directory-name (format "Search for %s in: " string)))))
     (list regexp dir)))
  (bzr-tools-at-branch-root dirname
   (grep-find (format bzr-tools-grep-command (shell-quote-argument expression)))))

(provide 'bzr-grep)
