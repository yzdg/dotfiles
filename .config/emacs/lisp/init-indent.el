;;; tabs and spaces
;;; inspired by https://dougie.io/emacs/indentation/

(setq custom-tab-width 2)

(defun disable-tabs () (setq indent-tabs-mode nil))
(defun enable-tabs  ()
  (local-set-key (kbd "TAB") 'tab-to-tab-stop)
  (setq indent-tabs-mode t)
  (setq tab-width custom-tab-width))

(add-hook 'prog-mode-hook 'enable-tabs)
(add-hook 'go-mode-hook 'enable-tabs)

(add-hook 'lisp-mode-hook 'disable-tabs)
(add-hook 'emacs-lisp-mode-hook 'disable-tabs)

;; language-specific
(setq-default python-indent-offset custom-tab-width)
(setq-default js-indent-level custom-tab-width)

;; making electric-indent behave sanely
(setq-default electric-indent-inhibit t)

;; make the backspace properly erase the tab instead of
;; removing 1 space at a time.
(setq backward-delete-char-untabify-method 'hungry)

;; shift width for evil-mode
;; for the vim-like motions of ">>" and "<<".
(setq-default evil-shift-width custom-tab-width)

;; visualize tabs as a pipe character - "|"
;; this will also show trailing characters as they are useful to spot.
(setq whitespace-style '(face tabs tab-mark trailing))
(custom-set-faces
 '(whitespace-tab ((t (:foreground "#636363")))))
(setq whitespace-display-mappings
  '((tab-mark 9 [124 9] [92 9]))) ; 124 is the ascii id for '\|'
(global-whitespace-mode) ; enable whitespace mode everywhere

(provide 'init-indent)
