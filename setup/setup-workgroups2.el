;;; Set up workgroups2 - a session manager for Emacs

(require 'workgroups2)

;; autoload/autosave:
;; if you start Emacs as "emacs --daemon" - turn off autoloading of workgroups:
(setq wg-use-default-session-file nil)

;; Set the prefix key
(setq wg-prefix-key (kbd "C-z"))

;; Set the session file path
(setq wg-default-session-file (expand-file-name "workgroups" savefiles-dir))

(workgroups-mode +1)

(provide 'setup-workgroups2)
