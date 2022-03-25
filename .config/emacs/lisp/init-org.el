;;; init-org.el
;;; org-mode and org-roam

(require 'org-roam)
(setq org-roam-directory "~/documents/orgs")
(setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
(org-roam-db-autosync-mode)

(provide 'init-org)
