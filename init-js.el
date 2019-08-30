(setq-default js2-basic-offset 2
              js-indent-level 2)

(spacemacs/set-leader-keys-for-major-mode 'js2-mode
  "sb" 'nodejs-repl-send-buffer
  "sr" 'nodejs-repl-send-region
  "se" 'nodejs-repl-send-last-sexp
  "m." 'tern-find-definition
  )

(add-to-list 'auto-mode-alist '("\\.mjs\\'" . js2-mode))

(add-hook
 'js2-mode-hook
 (lambda ()
   (js2-mode-hide-warnings-and-errors)
   ;(evil-leader/set-key-for-mode 'js2-mode "m." 'tern-find-definition)
   ))

(add-hook 'vue-mode-hook (lambda ()
                           (spacemacs|define-jump-handlers vue-mode)
                           ;; (tide-start-server-if-required)
                           (add-to-list 'spacemacs-jump-handlers-vue-mode '(tide-jump-to-definition :async t)
                           )))

(spacemacs/set-leader-keys-for-major-mode 'vue-mode
  "sb" 'nodejs-repl-send-buffer
  "sr" 'nodejs-repl-send-region
  "se" 'nodejs-repl-send-last-sexp
  "gr" 'tide-references
  )
