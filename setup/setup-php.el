;;; PHP development setup

(require 'php-mode)

(add-hook 'php-mode-hook
          (lambda ()
            (setq c-basic-offset 4)
            (php-enable-pear-coding-style)))

(add-to-list 'auto-mode-alist '("\\.phpclass\\'" . php-mode))

(provide 'setup-php)
