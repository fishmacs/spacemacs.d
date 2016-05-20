(setq-default js2-basic-offset 2
              js-indent-level 2)

(spacemacs/set-leader-keys-for-major-mode 'js2-mode
  "sb" 'nodejs-repl-send-buffer
  "sr" 'nodejs-repl-send-region
  "se" 'nodejs-repl-send-last-sexp)

(add-hook 'js2-mode-hook (lambda ()
  (js2-mode-hide-warnings-and-errors)))
