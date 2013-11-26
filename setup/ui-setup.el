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

(provide 'ui-setup)
