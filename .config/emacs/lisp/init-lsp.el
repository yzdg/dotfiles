;;; init-lsp.el
;;; eglot

(dolist (hook '(
                 c-mode-hook
                 c++-mode-hook
                 go-mode-hook
                 lua-mode-hook))
  (add-hook hook 'eglot-ensure))

(provide 'init-lsp)
