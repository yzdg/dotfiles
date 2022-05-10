;;; init.el -*- lexical-binding: t; -*-

(doom! :completion
       company
       vertico

       :ui
       doom
       doom-dashboard
       (emoji +unicode)
       hl-todo
       indent-guides
       modeline
       ophints
       (popup +defaults)
       vc-gutter
       vi-tilde-fringe

       :editor
       (evil +everywhere)
       fold
       (format +onsave)
       snippets
       word-wrap

       :emacs
       dired
       electric
       ibuffer
       undo
       vc

       :checkers
       syntax
       spell

       :tools
       editorconfig
       (eval +overlay)
       lookup
       (lsp +eglot)
       magit

       :os
       (:if IS-MAC macos)

       :lang
       (cc +lsp)
       emacs-lisp
       (go +lsp)
       lua
       (org +roam2)
       python
       sh

       :config
       (default +bindings +smartparens))
