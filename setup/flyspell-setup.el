;;; Set up flyspell-mode, an on-the-fly spell checking mode

;; Flyspell-mode does spell-checking on the fly as you type
(require 'flyspell)
(setq ispell-program-name "aspell"
      ispell-extra-args '("--sug-mode=ultra"))

;; Enable flyspell in text-mode
(add-hook 'text-mode-hook 'flyspell-mode)

;; Enable flyspell for comments and strings in programming modes
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

(provide 'flyspell-setup)
