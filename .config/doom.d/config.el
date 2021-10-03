;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "yzd"
      user-mail-address "yzd@yzdeng.xyz")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Fira Code" :size 18 :weight 'semi-light)
      doom-serif-font (font-spec :family "Source Serif Pro" :size 18)
      doom-variable-pitch-font (font-spec :family "sans" :size 18))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documents/orgs")

;; Org-roam
;;(setq org-roam-v2-ack t)
;;(setq org-roam-directory "~/Documents/orgs/notes")
;;(require 'org-roam)
;;(org-roam-setup)

;; Word wrap
(setq word-wrap t)

;; (use-package! org
;;   :init
;;   (setq org-agenda-files
;;         (seq-filter (lambda(x) (not (string-match "/pages/"(file-name-directory x))))
;;                     (directory-files-recursively org-directory "\\.org$")))
;;   :config
;;         (setq org-todo-keywords
;;         '((sequence
;;                 "TODO(t)" "WAIT(w)" "DOING(i)" "HOLD(h)" "|" "DONE(d)" "KILL(k)")
;;                 (sequence
;;                 "PROJ(P)" "|" "COMPLETE(D)" "CANCELLED(C)"))
;;         org-todo-keyword-faces
;;         '(("WAIT" . +org-todo-onhold)
;;                 ("DOING" . +org-todo-active)
;;                 ("HOLD" . +org-todo-onhold)
;;                 ("PROJ" . +org-todo-project)))
;;   )

(setq +format-on-save-enabled-modes '(not emacs-lisp-mode sql-mode tex-mode latex-mode org-msg-edit-mode c-mode java-mode))

(after! ccls
  (setq ccls-initialization-options '(:index (:comments 2) :completion (:detailedLabel t)))
  (set-lsp-priority! 'ccls 2)) ; optional as ccls is the default in Doom

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
