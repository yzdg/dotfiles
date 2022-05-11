;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; vars
(setq user-full-name "yzd"
      user-mail-address "yzd@defuh.xyz"
      doom-font (font-spec :family "Fira Code" :size 16)
      doom-theme 'doom-zenburn
      display-line-numbers-type t
      org-directory "~/orgs/")

;; utils
(defun delete-file-and-buffer ()
  "Kill the current buffer and deletes the file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if filename
        (if (y-or-n-p (concat "Do you really want to delete file " filename " ?"))
            (progn
              (delete-file filename)
              (message "Deleted file %s." filename)
              (kill-buffer)))
      (message "Not a file visiting buffer!"))))

(defun revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive)
  (revert-buffer :ignore-auto :noconfirm))

;; keymaps
(map! "C-c d" #'delete-file-and-buffer
      "C-c r" #'revert-buffer-no-confirm)

;; org
(require 'find-lisp)
(setq org-agenda-dir
      (expand-file-name "gtd/" org-directory))
(setq org-agenda-files
      (find-lisp-find-files org-agenda-dir "\.org$"))
(after! org
  (setq org-capture-templates
  '(("i" "Inbox" entry
     (file (expand-file-name "inbox.org" org-agenda-dir))
     "* TODO %?\n")
    ("s" "Slipbox" entry
     (file (expand-file-name "zettle/inbox.org" org-directory))
     "* %?\n"))))

(use-package! org-roam
  :init
  (map! :leader
        :prefix "r"
        :desc "org-roam" "b" #'org-roam-buffer-toggle
        :desc "org-roam-node-insert" "i" #'org-roam-node-insert
        :desc "org-roam-node-find" "f" #'org-roam-node-find)
  (setq org-roam-directory (expand-file-name "zettle/" org-directory))
  (setq org-roam-db-location (concat org-roam-directory "org-roam.db"))
  (setq org-id-locations-file (concat org-roam-directory ".orgids"))
  :config
  (org-roam-db-autosync-mode 1)
  (set-popup-rules!
    `((,(regexp-quote org-roam-buffer) ; persistent org-roam buffer
       :side right :width .33 :height .5 :ttl nil :modeline nil :quit nil :slot 1)
      ("^\\*org-roam: " ; node dedicated org-roam buffer
       :side right :width .33 :height .5 :ttl nil :modeline nil :quit nil :slot 2)))
  (add-hook 'org-roam-mode-hook #'turn-on-visual-line-mode)
  (setq org-roam-capture-templates
        '(("d" "default" plain "%?"
           :if-new (file+head "%<%Y%m%d%H%M%S>.org"
                              "#+title: ${title}\n")
           :immediate-finish t
           :unnarrowed t)))
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag))))

;; lsp
(use-package! eglot
  :config
  (add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-mode t))
