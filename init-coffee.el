(add-hook 'coffee-mode-hook
          (lambda ()
            (setq coffee--repl-multiline-initialized t)
            (evil-local-set-key 'hybrid "\C-c\C-v" 'coffee-repl-multiline)))

(defun coffee-repl-multiline ()
  (interactive)
  (let ((proc (coffee-get-repl-proc)))
    (comint-send-string proc "\026")))
