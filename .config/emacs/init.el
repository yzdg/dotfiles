;; load-path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-ui)
(require 'init-indent)
(require 'init-minibuffer)

;; consider a period followed by a single space to be end of sentence
(setq sentence-end-double-space nil)

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

;; enable installation of packages from MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; install packages
(dolist (package '(undo-fu evil paredit go-mode))
  (unless (package-installed-p package)
    (package-install package)))

(require 'init-evil)
(require 'init-paredit)

(require 'init-command)
(require 'init-keymap)

;; start server.
(require 'server)
(unless (server-running-p)
  (server-start))
