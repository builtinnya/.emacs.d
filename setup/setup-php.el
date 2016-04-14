;;; PHP development setup

(require 'php-mode)

(add-hook 'php-mode-hook
          (lambda ()
            (setq c-basic-offset 4)
            (php-enable-pear-coding-style)))

(provide 'setup-php)
