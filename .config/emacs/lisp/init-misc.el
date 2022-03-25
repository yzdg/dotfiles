;;; init-misc.el
;;; misc configs

;; consider a period followed by a single space to be end of sentence
(setq sentence-end-double-space nil)

;; don't create auto-save-list directory
(setq auto-save-list-file-prefix nil)

;; write auto-saves and backups to separate directory
(setq make-backup-files nil)
(setq auto-save-default nil)

;; disable lockfiles
(setq create-lockfiles nil)

;; workaround for https://debbugs.gnu.org/34341 in GNU Emacs <= 26.3
(when (and (version< emacs-version "26.3") (>= libgnutls-version 30603))
  (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3"))

;; write customizations to a separate file instead of this file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file t)

(provide 'init-misc)
