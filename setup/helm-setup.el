;;; Set up Helm - incremental completion and selection narrowing framework

(require 'helm-config)

;; Fetch my GitHub starred repositories and select one for browsing
(require 'helm-github-stars)
(setq helm-github-stars-username "builtinnya")
(setq helm-github-stars-cache-file
      (expand-file-name "hgs-cache" savefiles-dir))

;; Use Helm globally
(helm-mode +1)

(provide 'helm-setup)
