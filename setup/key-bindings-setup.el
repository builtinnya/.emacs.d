;;; Set up key-bindings

(when (eq system-type 'darwin)
  ;; Press command-return to toggle full-screen
  (global-set-key (kbd "<s-return>") 'osx-toggle-fullscreen))

;; Move to Flycheck errors
(global-set-key (kbd "C-c C-n") 'flycheck-tip-cycle)
(global-set-key (kbd "C-c C-p") 'flycheck-tip-cycle-reverse)

;; Helm lightweight version
(global-set-key (kbd "C-c h") 'helm-mini)

;; Helm find-file
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; Multiple cursors: add the next matching part
(global-set-key (kbd "s-d") 'mc/mark-next-like-this)

;; Multiple cursors: add all matching parts
(global-set-key (kbd "s-D") 'mc/mark-all-like-this)

(provide 'key-bindings-setup)
