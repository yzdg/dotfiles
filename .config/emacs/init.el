(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-ui)
(require 'init-indent)
(require 'init-minibuffer)
(require 'init-misc)
(require 'init-pkg)
(require 'init-evil)
(require 'init-paredit)
(require 'init-lsp)
(require 'init-which)
(require 'init-completion)
(require 'init-command)
(require 'init-keymap)

;; start server.
(require 'server)
(unless (server-running-p)
  (server-start))
