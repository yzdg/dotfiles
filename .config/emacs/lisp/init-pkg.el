;;; init-pkg.el
;;; pakage installation and quick enabling

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(setq pkgs '(
             use-package
             undo-fu
             evil
             paredit
             go-mode
             eglot
             eldoc-box
             which-key
             company
             editorconfig
             org-roam
             ido-vertical-mode))

(dolist (package pkgs)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'init-pkg)
