;;; init-lsp.el
;;; eglot

(dolist (hook '(
                 c-mode-hook
                 c++-mode-hook
                 go-mode-hook
                 lua-mode-hook))
  (add-hook hook 'eglot-ensure))

(add-hook 'eglot--managed-mode-hook #'eldoc-box-hover-at-point-mode t)

(provide 'init-lsp)
