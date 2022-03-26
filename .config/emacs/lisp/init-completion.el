;;; init-completion
;;; company

(dolist (hook '(
                 c-mode-hook
                 c++-mode-hook
                 go-mode-hook
                 lua-mode-hook
                 org-mode-hook))
  (add-hook hook 'company-mode))

(provide 'init-completion)
