;;; Whitespace-related setup

(require 'whitespace)

;; The part of line which goes beyond 80-column will be highlighted
(setq whitespace-line-column 80)

;; Specify the behavior of whitespace-mode
(setq whitespace-style
      '(face         ; Turn on visualization
        trailing     ; Trailing blanks
        tabs         ; Tabs
        lines-tail   ; Part of line which goes beyond `whitespace-line-column'
        empty        ; Empty lines at beginning and/or end of buffer
        ))

;; Use the same color as background for highlighting the extra empty lines
;; to avoid annoyance while showing popup tip
(set-face-attribute 'whitespace-empty nil
                    :foreground (face-background 'default)
                    :background (face-background 'default))

;; Cleanup before save
(add-hook 'before-save-hook 'whitespace-cleanup)

;; Enable whitespace-mode globally
(global-whitespace-mode +1)

(provide 'whitespace-setup)
