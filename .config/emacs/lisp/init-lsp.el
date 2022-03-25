;;; init-lsp.el
;;; eglot

(add-hook 'go-mode-hook 'eglot-ensure)

(provide 'init-lsp)
