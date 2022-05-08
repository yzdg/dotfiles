;;; init-org.el
;;; org-mode and org-roam

(add-hook 'org-mode-hook 'visual-line-mode)

(setq org-capture-bookmark nil)

(require 'org-roam)
(setq org-roam-directory "~/orgs/zettle/")
(setq org-roam-db-location (concat org-roam-directory "org-roam.db"))
(setq org-id-locations-file (concat org-roam-directory ".orgids"))
(setq org-descriptive-links nil) ;; show `[[]]' in org links
(setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
(setq org-roam-capture-templates
      '(("d" "default" plain "%?"
         :if-new (file+head "%<%Y%m%d%H%M%S>.org"
                            "#+title: ${title}\n")
         :immediate-finish t
         :unnarrowed t)))
(org-roam-db-autosync-mode)

(require 'find-lisp)
(setq org-agenda-files
      (find-lisp-find-files "~/orgs/gtd/" "\.org$"))
(setq org-capture-templates
      `(("i" "Inbox" entry  (file "~/orgs/gtd/inbox.org")
         ,(concat "* TODO %?\n"
                  "/Entered on/ %U"))))

(provide 'init-org)
