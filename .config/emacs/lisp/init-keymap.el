;;; custom keymaps

(global-set-key (kbd "C-c i") 'open-init-file)
(global-set-key (kbd "C-c d") 'delete-trailing-whitespace)

(define-key minibuffer-local-completion-map (kbd "SPC") 'self-insert-command) ;; insert space in minibuffer

(evil-global-set-key 'normal (kbd "<leader> -") 'evil-window-split)
(evil-global-set-key 'normal (kbd "<leader> =") 'evil-window-vsplit)
(evil-global-set-key 'normal (kbd "u") 'undo-fu-only-undo)
(evil-global-set-key 'normal (kbd "C-r") 'undo-fu-only-redo)
(evil-global-set-key 'normal (kbd "H") 'previous-buffer)
(evil-global-set-key 'normal (kbd "L") 'next-buffer)

;; org mode
(evil-global-set-key 'normal (kbd "<leader> r f") 'org-roam-node-find)
(evil-define-key 'normal org-mode-map
  (kbd "<leader> r b") 'org-roam-buffer-toggle
  (kbd "<leader> r i") 'org-roam-node-insert)

;; lsp
(evil-define-key 'motion eglot-mode-map
  (kbd "gd") 'xref-find-definitions
  (kbd "gr") 'xref-find-references
  ; (kbd "K") 'eldoc-doc-buffer
  (kbd "<leader> l r") 'eglot-rename
  (kbd "<leader> l f") 'eglot-format)

(provide 'init-keymap)
