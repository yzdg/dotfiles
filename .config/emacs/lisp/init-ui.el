;;; UI

(menu-bar-mode 0)
(when (display-graphic-p)
  (tool-bar-mode 0)
  (scroll-bar-mode 0))
(setq inhibit-startup-screen t)
(global-linum-mode 1)
(column-number-mode 1)

;; font
(set-face-attribute 'default nil :font "Fira Code" :height 160)

;; theme
(load-theme 'wombat)
(set-face-background 'default "#111")
(set-face-background 'cursor "#c96")
(set-face-background 'isearch "#c60")
(set-face-foreground 'isearch "#eee")
(set-face-background 'lazy-highlight "#960")
(set-face-foreground 'lazy-highlight "#ccc")
(set-face-foreground 'font-lock-comment-face "#fc0")

;; show stray whitespace
(setq-default show-trailing-whitespace t)
(setq-default indicate-empty-lines t)
(setq-default indicate-buffer-boundaries 'left)

;; highlight matching pairs of parentheses
(require 'paren)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "#f4a460")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)
(setq show-paren-delay 0)
(show-paren-mode)

;; highlight current line
(require 'hl-line)
(set-face-attribute 'hl-line nil :inherit nil :background "gray18")
(global-hl-line-mode 1)

;; eglot/eldoc
(require 'eldoc-box)
(setq eldoc-box-cleanup-interval 2
      eldoc-box-max-pixel-height 900
      eldoc-box-max-pixel-width 1500)

(provide 'init-ui)
