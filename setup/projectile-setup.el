;;; Set up Projectile - project manager

(require 'projectile)

;; Diminish keeps the modeline tidy
(require 'diminish)

;; Grizzl - A fuzzy-search utility for Emacs
(add-vendor-to-load-path "grizzl")
(require 'grizzl)

;; Enable Projectile globally
(projectile-global-mode)

;; Enable caching unconditionally
(setq projectile-enable-caching t)

;; Set paths of cache file and bookmark file
(setq projectile-cache-file
      (expand-file-name "projectile.cache" savefiles-dir))
(setq projectile-known-projects-file
      (expand-file-name "projectile-bookmarks.eld" savefiles-dir))

;; Set completion system
(setq projectile-completion-system 'grizzl)

;; Keep mode display concise
(diminish 'projectile-mode "Prjl")

(provide 'projectile-setup)
