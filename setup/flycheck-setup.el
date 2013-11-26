;;; Set up Flycheck - on-the-fly syntax checking mode

;; Enable Flycheck in all buffers in which it can be used
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Show errors in popup-tip.
;; Use `flycheck-tip-cycle' and `flycheck-tip-cycle-reverse' to move to errors.
(require 'flycheck-tip)

(provide 'flycheck-setup)
