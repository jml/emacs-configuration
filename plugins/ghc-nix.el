;;; ghc-nix --- Tools for working better with ghc under nix
;;;
;;; Commentary:
;;;   Not much to see.
;;; Code:


(defun refresh-nix-package-databases ()
  "Update .dir-locals.el to have correct package databases for nix."
  (interactive)
  (add-dir-local-variable 'haskell-mode 'flycheck-ghc-package-databases (nix-package-databases))
  (add-dir-local-variable 'haskell-mode 'flycheck-haskell-ghc-executable (nix-ghc-executable)))

(defun nix-package-databases ()
  "Return a list of ghc package databases under nix."
  (-find-package-databases (-run-nix-command "ghc-pkg list")))

(defun nix-ghc-executable ()
  "Return the path to the ghc executable inside the nix-shell."
  (-chomp-end (-run-nix-command "which ghc")))

(defun -run-nix-command (command)
  "Run COMMAND inside a nix-shell, returning output."
  (let ((default-directory (locate-dominating-file default-directory "shell.nix")))
    (shell-command-to-string (-get-nix-command command))))

(defun -get-nix-command (command)
  "Get the command to run COMMAND inside a nix-shell."
  (combine-and-quote-strings `("nix-shell" "--run" ,command)))





(defun -find-package-databases (ghc-pkg-output)
  "Find package database paths in GHC-PKG-OUTPUT."
  (-map-maybe '-package-database-path (split-string ghc-pkg-output)))


(defun -package-database-p (s)
  "Is S a package database?"
  (char-equal (-last-element s) ?:))


(defun -package-database-path (s)
  "Return path to package database represented by S.

If not a package database, return nil."
  (if (-package-database-p s)
      (substring s 0 -1) nil))



(defun -last-element (s)
  "Find the last element of S."
  (elt s (- (length s) 1)))


(defun -map-maybe (f xs)
  "Map F over XS, discarding when f(x) is nil."
  (delq nil (mapcar f xs)))


(defun -chomp-end (str)
  "Chomp tailing whitespace from STR."
  (replace-regexp-in-string (rx (* (any " \t\n")) eos)
                            ""
                            str))


(provide 'ghc-nix)
;;; ghc-nix.el ends here
