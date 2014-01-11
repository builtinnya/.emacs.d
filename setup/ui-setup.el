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
(add-vendor-to-load-path "powerline")
(require 'powerline)

(set-face-attribute 'mode-line nil
                    :background "OliveDrab3"
                    :box nil)

(set-face-attribute 'mode-line-inactive nil
                    :box nil)

(set-face-attribute 'powerline-active1 nil
                    :foreground "white"
                    :background "grey22")

(set-face-attribute 'powerline-active2 nil
                    :foreground "white"
                    :background "grey40")

(set-face-attribute 'powerline-active3 nil
                    :foreground "white"
                    :background "grey10")

;;;###autoload
(defun powerline-my-theme ()
  "Set up my mode-line."
  (interactive)
  (setq-default mode-line-format
                '("%e"
                  (:eval
                   (let* ((mode-line 'mode-line)
                          (face1 'powerline-active1)
                          (face2 'powerline-active2)
                          (face3 'powerline-active3)
                          (separator-left
                           (intern
                            (format "powerline-%s-%s"
                                    powerline-default-separator
                                    (car powerline-default-separator-dir))))
                          (separator-right
                           (intern
                            (format "powerline-%s-%s"
                                    powerline-default-separator
                                    (cdr powerline-default-separator-dir))))
                          (lhs
                           (list (powerline-raw "%*" nil 'l)
                                 (powerline-buffer-size nil 'l)
                                 ;; (powerline-raw mode-line-mule-info nil 'l)
                                 (powerline-raw " ")
                                 (powerline-buffer-id nil 'l)
                                 (when (and (boundp 'which-func-mode)
                                            which-func-mode)
                                   (powerline-raw which-func-format nil 'l))
                                 (powerline-raw " ")
                                 (funcall separator-left nil face3)
                                 (powerline-raw "%4l" face3 'l)
                                 (powerline-raw ":" face3 'l)
                                 (powerline-raw "%3c" face3 'r)
                                 (funcall separator-left face3 face1)
                                 (when (boundp 'erc-modified-channels-object)
                                   (powerline-raw erc-modified-channels-object
                                                  face1 'l))
                                 (powerline-major-mode face1 'l)
                                 (powerline-process face1)
                                 (powerline-minor-modes face1 'l)
                                 (powerline-narrow face1 'l)
                                 (powerline-raw " " face1)
                                 (funcall separator-left face1 face2)
                                 (powerline-vc face2 'r)))
                          (rhs
                           (list (powerline-raw global-mode-string face2 'r)
                                 (funcall separator-right face2 nil)
                                 (powerline-raw " ")
                                 (powerline-raw "%6p" nil 'r)
                                 (powerline-hud face2 face1))))
                     (concat (powerline-render lhs)
                             (powerline-fill face2 (powerline-width rhs))
                             (powerline-render rhs)))))))
;; Load my powerline theme
(powerline-my-theme)

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
