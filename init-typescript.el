(spacemacs/set-leader-keys-for-major-mode 'tide-mode
  "sb" 'ts-send-buffer
  "sr" 'ts-send-region
  "se" 'ts-send-last-sexp
  )

(add-hook 'tide-mode
          (lambda ()
            (setq typescript-indent-level 2)
            ))
