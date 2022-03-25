;;; custom keymaps

(global-set-key (kbd "C-c i") 'open-init-file)
(global-set-key (kbd "C-c d") 'delete-trailing-whitespace)

;; evil
(evil-global-set-key 'normal (kbd "<SPC> -") 'evil-window-split)
(evil-global-set-key 'normal (kbd "<SPC> =") 'evil-window-vsplit)
(evil-global-set-key 'normal (kbd "u") 'undo-fu-only-undo)
(evil-global-set-key 'normal (kbd "C-r") 'undo-fu-only-redo)

(provide 'init-keymap)
