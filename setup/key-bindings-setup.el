;;; Set up key-bindings

(when (eq system-type 'darwin)
  ;; Press command-return to toggle full-screen
  (global-set-key (kbd "<s-return>") 'osx-toggle-fullscreen))

;; Move to Flycheck errors
(global-set-key (kbd "C-c C-n") 'flycheck-tip-cycle)
(global-set-key (kbd "C-c C-p") 'flycheck-tip-cycle-reverse)

;; Do the silver search
(global-set-key (kbd "s-f") 'ag-project)

;; Multiple cursors: add the next matching part
(global-set-key (kbd "s-d") 'mc/mark-next-like-this)

;; Multiple cursors: add all matching parts
(global-set-key (kbd "s-D") 'mc/mark-all-like-this)

;; Press Command-p for find in project
(global-set-key (kbd "s-p") 'helm-projectile)

;; List symbols by semantic or imenu
(global-set-key (kbd "s-i") 'helm-semantic-or-imenu)

;; Search all buffers backed by files
(global-set-key (kbd "s-s") 'my-helm-multi-occur-all-buffers)

;; Locate files from helm
(global-set-key (kbd "s-l") 'helm-locate)

;; Fetch my GitHub starred repositories
(global-set-key (kbd "C-c f") 'helm-github-stars-fetch)

;; Select my GitHub starred repository for browsing
(global-set-key (kbd "C-c h") 'helm-github-stars)

;; Expand region semantically
(global-set-key (kbd "C-^") 'er/expand-region)

;; Toggle line-number display
(global-set-key (kbd "C-c l") 'linum-mode)

;; Jump to a word starting with a given char
(global-set-key (kbd "C-0") 'ace-jump-mode)

;; Jump back to the original position
(global-set-key (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

(provide 'key-bindings-setup)
