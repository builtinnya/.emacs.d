;;; Set up user interface

;; Disable startup screen
(setq inhibit-startup-screen t)

;; Disable tool bar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Disable scroll bar
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Disable menu bar
(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))

;; Set the starting position and width and height of Emacs window
(add-to-list 'default-frame-alist '(left . 0))
(add-to-list 'default-frame-alist '(top . 0))
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 175))

;; Load my favorite theme to make Emacs look very nice
(load-theme 'soft-morning t)

;; Make mode line look better
(add-vendor-to-load-path "emacs-powerline")
(require 'powerline)


;; Unclutter the mode line
(require 'diminish)
(eval-after-load "yasnippet" '(diminish 'yas-minor-mode))
(eval-after-load "eldoc" '(diminish 'eldoc-mode))
(eval-after-load "smartparens" '(diminish 'smartparens-mode))
(eval-after-load "flycheck" '(diminish 'flycheck-mode))
(eval-after-load "flyspell" '(diminish 'flyspell-mode))
(eval-after-load "auto-complete" '(diminish 'auto-complete-mode))
(eval-after-load "whitespace" '(diminish 'global-whitespace-mode))
(eval-after-load "projectile" '(diminish 'projectile-mode))
(eval-after-load "helm-mode" '(diminish 'helm-mode))
(eval-after-load "simple" '(diminish 'visual-line-mode))
(eval-after-load "highlight-indentation"
  '(diminish 'highlight-indentation-current-column-mode))

(provide 'ui-setup)
