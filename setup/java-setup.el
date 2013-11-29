;;; Set up Java development environment
;;
;; Use Eclipse with Emacs+ plugin on serious Java projects
;;

;; Use Google's style
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)

(provide 'java-setup)
