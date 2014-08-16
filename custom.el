
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Buffer-menu-use-header-line nil)
 '(TeX-shell "bash" t)
 '(TeX-view-style (quote (("^a4\\(?:dutch\\|paper\\|wide\\)?\\|sem-a4$" "xdvi %d -paper a4") ("^a5\\(?:comb\\|paper\\)?$" "xdvi %d -paper a5") ("^b5paper$" "xdvi %d -paper b5") ("^letterpaper$" "xdvi %d -paper us") ("^legalpaper$" "xdvi %d -paper legal") ("^executivepaper$" "xdvi %d -paper 7.25x10.5in") ("^landscape$" "xdvi %d -paper a4r -s 4") ("." "xdvi %d -paper a4"))))
 '(ansi-color-names-vector ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(auto-mode-case-fold nil)
 '(auto-save-list-file-prefix "~/.emacs.d/auto-save-list/.saves-")
 '(backup-by-copying-when-linked t)
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(bbdb-check-zip-codes-p nil)
 '(bbdb-default-country "UK")
 '(bbdb-north-american-phone-numbers-p nil)
 '(blink-cursor-mode nil)
 '(c-default-style "java")
 '(case-fold-search t)
 '(column-number-mode t)
 '(compilation-mode-hook (quote ((lambda nil (toggle-truncate-lines nil)))))
 '(compilation-scroll-output t)
 '(completion-cycle-threshold 5)
 '(current-language-environment "English")
 '(custom-buffer-indent 4)
 '(custom-safe-themes (quote ("0c311fb22e6197daba9123f43da98f273d2bfaeeaeb653007ad1ee77f0003037" "60f04e478dedc16397353fb9f33f0d895ea3dab4f581307fbf0aa2f07e658a40" "73fe242ddbaf2b985689e6ec12e29fab2ecd59f765453ad0e93bc502e6e478d6" "3c708b84612872e720796ea1b069cf3c8b3e909a2e1da04131f40e307605b7f9" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "68769179097d800e415631967544f8b2001dae07972939446e21438b1010748c" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "72cc9ae08503b8e977801c6d6ec17043b55313cda34bcf0e6921f2f04cf2da56" "30fe7e72186c728bd7c3e1b8d67bc10b846119c45a0f35c972ed427c45bacc19" "21d9280256d9d3cf79cbcf62c3e7f3f243209e6251b215aede5026e0c5ad853f" "71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" "5e1d1564b6a2435a2054aa345e81c89539a72c4cad8536cfe02583e0b7d5e2fa" "71efabb175ea1cf5c9768f10dad62bb2606f41d110152f4ace675325d28df8bd" "de58ec8c52e1bba7d46f627c57d0f1a364df9b1e92e45156e5d04d3cec2531d6" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(dabbrev-case-distinction nil)
 '(dabbrev-case-fold-search nil)
 '(dabbrev-case-replace nil)
 '(dabbrev-upcase-means-case-search t)
 '(desktop-base-file-name ".emacs.desktop")
 '(desktop-base-lock-name ".emacs.desktop.lock")
 '(desktop-load-locked-desktop t)
 '(desktop-save-mode t)
 '(dvc-tips-enabled nil)
 '(ess-display-buffer-reuse-frames nil)
 '(ess-language "R" t)
 '(exec-path (quote ("/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin" "/usr/local/bin")))
 '(find-file-existing-other-name nil)
 '(flymake-log-level -1)
 '(global-font-lock-mode t)
 '(grep-template "grep <C> -I -nH -e <R> <F>")
 '(gutter-buffers-tab-visible-p nil)
 '(haskell-mode-hook (quote (turn-on-haskell-decl-scan turn-on-haskell-doc turn-on-haskell-indentation)))
 '(haskell-program-name "ghci \"+.\"")
 '(highlight-beyond-fill-column-in-modes (quote ("python-mode")))
 '(indent-tabs-mode nil)
 '(initial-major-mode (quote text-mode))
 '(initial-scratch-message nil)
 '(kill-whole-line nil)
 '(line-number-mode t)
 '(magit-use-overlays nil)
 '(mail-envelope-from (quote header))
 '(mail-specify-envelope-from t)
 '(markdown-command "markdown | smartypants")
 '(markdown-follow-wiki-link-on-enter nil)
 '(markdown-indent-on-enter t)
 '(menu-bar-mode nil)
 '(message-sendmail-envelope-from (quote header))
 '(org-agenda-custom-commands (quote (("n" "Agenda and all TODO's" ((agenda "") (alltodo))) ("w" "Waiting For" todo "WF") ("i" "In progress" todo "INPROGRESS"))))
 '(org-agenda-dim-blocked-tasks (quote invisible))
 '(org-agenda-files (quote ("/home/jml/Google Drive/Organize/PERSONAL")))
 '(org-archive-location "%s_archive::datetree/*")
 '(org-archive-reversed-order t)
 '(org-archive-save-context-info (quote (time file category todo itags)))
 '(org-completion-use-iswitchb t)
 '(org-enforce-todo-dependencies t)
 '(org-fontify-done-headline t)
 '(org-fontify-whole-heading-line t)
 '(org-hide-leading-stars t)
 '(org-link-abbrev-alist (quote (("lp" . "https://bugs.launchpad.net/bugs/") ("RT" . "https://rt.admin.canonical.com/Ticket/Display.html?id="))))
 '(org-link-frame-setup (quote ((vm . vm-visit-folder-other-frame) (gnus . org-gnus-no-new-news) (file . find-file) (wl . wl-other-frame))))
 '(org-log-into-drawer "LOGBOOK")
 '(org-modules (quote (org-bbdb org-bibtex org-docview org-gnus org-info org-jsinfo org-irc org-mew org-mhe org-rmail org-vm org-wl org-w3m)))
 '(org-startup-indented t)
 '(org-stuck-projects (quote ("/-DONE" ("TODO" "AGENDA") nil "")))
 '(org-todo-keywords (quote ((sequence "TODO(t)" "NEXT(n!)" "INPROGRESS(i!)" "WF(w!)" "|" "DONE(d!)" "CANCELLED(c!@)") (sequence))))
 '(org-use-fast-todo-selection t)
 '(org-wikinodes-scope (quote directory))
 '(package-archives (quote (("marmalade" . "http://marmalade-repo.org/packages/") ("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(package-load-list (quote (all paredit)))
 '(paren-mode (quote paren) nil (paren))
 '(php-mode-speedbar-open nil)
 '(pop-up-windows nil)
 '(query-user-mail-address nil t)
 '(require-final-newline t)
 '(rst-level-face-base-light 30)
 '(safe-local-variable-values (quote ((whitespace-style face tabs spaces trailing lines space-before-tab::space newline indentation::space empty space-after-tab::space space-mark tab-mark newline-mark) (test-case-name . twisted\.trial\.test\.test_runner) (encoding . utf8) (encoding . utf-8))))
 '(scroll-bar-mode nil)
 '(scroll-conservatively 100000)
 '(scroll-down-aggressively nil)
 '(scroll-error-top-bottom t)
 '(scroll-step 0)
 '(scroll-up-aggressively nil)
 '(scrollbars-visible-p nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(sendmail-program "/usr/bin/msmtp")
 '(sentence-end-double-space nil)
 '(shell-file-name "/bin/bash")
 '(show-paren-mode t)
 '(show-paren-style (quote expression))
 '(show-trailing-whitespace t)
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587)
 '(smtpmail-stream-type (quote starttls))
 '(split-height-threshold nil)
 '(split-width-threshold nil)
 '(sql-pop-to-buffer-after-send-region t)
 '(tab-width 4)
 '(tex-shell-file-name nil)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil nil (tool-bar))
 '(toolbar-visible-p nil)
 '(track-eol t)
 '(transient-mark-mode t)
 '(truncate-lines t)
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify))
 '(user-mail-address "jml@mumak.net")
 '(vc-handled-backends (quote (RCS CVS SVN SCCS Git Hg Arch)))
 '(vc-make-backup-files t)
 '(visible-bell t)
 '(which-function-mode t)
 '(wiki-follow-name-action (quote find-file))
 '(wiki-name-regexp "\\<[A-Z][a-z]+\\([A-Z][a-z]+\\)+\\>")
 '(x-select-enable-clipboard t))

