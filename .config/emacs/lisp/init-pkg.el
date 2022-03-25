;;; init-pkg.el
;;; pakage installation and quick enabling

;; enable installation of packages from MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; install packages
(dolist (package '(undo-fu evil paredit go-mode eglot which-key company editorconfig))
  (unless (package-installed-p package)
    (package-install package)))

;; editorconfig
(require 'editorconfig)
(editorconfig-mode 1)

(provide 'init-pkg)
