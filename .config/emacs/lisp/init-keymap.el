;;; custom keymaps

(global-set-key (kbd "C-c i") 'open-init-file)
(global-set-key (kbd "C-c d") 'delete-trailing-whitespace)

(evil-global-set-key 'normal (kbd "<leader> -") 'evil-window-split)
(evil-global-set-key 'normal (kbd "<leader> =") 'evil-window-vsplit)
(evil-global-set-key 'normal (kbd "u") 'undo-fu-only-undo)
(evil-global-set-key 'normal (kbd "C-r") 'undo-fu-only-redo)

(evil-global-set-key 'normal (kbd "<leader> r f") 'org-roam-node-find)
(evil-global-set-key 'normal (kbd "<leader> r i") 'org-roam-node-insert)
(evil-global-set-key 'normal (kbd "<leader> r b") 'org-roam-buffer-toggle)

(provide 'init-keymap)