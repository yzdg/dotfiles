;;; init-org.el
;;; org-mode and org-roam

(require 'org-roam)
(setq org-roam-directory "~/documents/orgs/")
(setq org-roam-db-location (concat org-roam-directory "org-roam.db"))
(setq org-id-locations-file (concat org-directory ".orgids"))
(setq org-descriptive-links nil) ;; show `[[]]' in org links
(setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
(setq org-roam-capture-templates
      '(("d" "default" plain "%?"
         :if-new (file+head "${slug}.org"
                            "#+title: ${title}\n")
         :immediate-finish t
         :unnarrowed t)))
(org-roam-db-autosync-mode)

(provide 'init-org)
