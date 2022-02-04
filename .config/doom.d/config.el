;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


(setq user-full-name "yzd"
      user-mail-address "me@yzdeng.xyz")

(setq doom-font (font-spec :family "Fira Code" :size 18 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "sans" :size 13))

(setq doom-theme 'base16-default-dark)

(setq org-directory "~/documents/orgroam/")

(setq display-line-numbers-type t)

;; Org-roam
(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/documents/orgroam/"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
	 ("C-c n f" . org-roam-node-find)
	 ("C-c n g" . org-roam-graph)
	 ("C-c n i" . org-roam-node-insert)
	 ("C-c n c" . org-roam-capture)
	 ("C-c n j" . org-roam-dailies-capture-today))
  :config
  (setq org-roam-capture-templates
	'(("d" "default" plain
	  "%?"
	  :target (file+head "${slug}.org"
			    "#+title: ${title}\n")
	  :immediate-finish t
	  :unnarrowed t)))
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (org-roam-db-autosync-mode))
