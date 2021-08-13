(spacemacs/set-leader-keys-for-major-mode 'typescript-mode
  "sb" 'ts-send-buffer
  "sr" 'ts-send-region
  "se" 'ts-send-last-sexp
  )

(add-hook 'typescript-mode-hook
          (lambda ()
            (setq typescript-indent-level 2)
            ))
