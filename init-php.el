(add-hook 'php-mode-hook (lambda ()
          (defun my-php-mode-hook ()
            "My PHP mode configuration."
            (setq indent-tabs-mode nil
                  tab-width 4
                  c-basic-offset 4))))
