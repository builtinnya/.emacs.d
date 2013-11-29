;;; Set up key-bindings

(when (eq system-type 'darwin)
  ;; Press command-return to toggle full-screen
  (global-set-key (kbd "<s-return>") 'osx-toggle-fullscreen))

;; Move to Flycheck errors
(global-set-key (kbd "C-c C-n") 'flycheck-tip-cycle)
(global-set-key (kbd "C-c C-p") 'flycheck-tip-cycle-reverse)

;; Helm lightweight version
(global-set-key (kbd "C-c h") 'helm-mini)

;; Multiple cursors: add the next matching part
(global-set-key (kbd "s-d") 'mc/mark-next-like-this)

;; Multiple cursors: add all matching parts
(global-set-key (kbd "s-D") 'mc/mark-all-like-this)

;; Press Command-p for fuzzy find in project
(global-set-key (kbd "s-p") 'projectile-find-file)

;; Press Command-b for fuzzy switch buffer
(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

(provide 'key-bindings-setup)
