;;; paredit

(dolist (hook '(
                 emacs-lisp-mode-hook
                 eval-expression-minibuffer-setup-hook
                 ielm-mode-hook
                 lisp-interaction-mode-hook
                 lisp-mode-hook
                 org-mode-hook))
  (add-hook hook 'enable-paredit-mode))

(provide 'init-paredit)
