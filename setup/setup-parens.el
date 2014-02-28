;;; Parenthesis-related setup

;; Load default configuration of smartparens
(require 'smartparens-config)

;; Load configuration for (La)Tex based modes
(require 'smartparens-latex)
;; Treat the $$ math blocks as sexps
(add-to-list 'sp-navigate-consider-stringlike-sexp 'latex-mode)

;; Highlight matching pairs
(show-smartparens-global-mode t)

;; Markdown
(sp-with-modes '(markdown-mode gfm-mode rst-mode)
  (sp-local-pair "*" "*" :bind "C-*")
  (sp-local-tag "2" "**" "**")
  (sp-local-tag "s" "```scheme" "```")
  (sp-local-tag "<"  "<_>" "</_>" :transform 'sp-match-sgml-tags))

;; Turn on smartparens globally
(smartparens-global-mode t)

(provide 'setup-parens)
