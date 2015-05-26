;;; ghc-nix --- Tools for working better with ghc under nix
;;;
;;; Commentary:
;;;   Not much to see.
;;; Code:


(defun refresh-nix-package-databases ()
  "Update .dir-locals.el to have correct package databases for nix."
  (interactive)
  (add-dir-local-variable nil 'flycheck-ghc-package-databases (nix-package-databases)))

(defun nix-package-databases ()
  "Return a list of ghc package databases under nix."
  (let ((default-directory (locate-dominating-file default-directory "shell.nix")))
    (-find-package-databases
     ;; XXX: Use `nix-shell --run' when we've finished upgrading.
     (shell-command-to-string "nix-shell --command \"ghc-pkg list\""))))



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



(provide 'ghc-nix)
;;; ghc-nix.el ends here
