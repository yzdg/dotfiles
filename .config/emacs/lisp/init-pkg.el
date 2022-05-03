;;; init-pkg.el
;;; pakage installation and quick enabling

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(setq pkgs '(
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
             icomplete-vertical))

(dolist (package pkgs)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'init-pkg)
