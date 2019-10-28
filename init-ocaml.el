(add-hook 'tuareg-mode-hook
          (lambda ()
            (require 'opam-user-setup)))

(evil-leader/set-key-for-mode 'reason-mode "eb" 'tuareg-eval-buffer)
(evil-leader/set-key-for-mode 'reason-mode "er" 'tuareg-eval-region)
(evil-leader/set-key-for-mode 'reason-mode "ee" 'tuareg-eval-phrase)

(spacemacs/set-leader-keys-for-major-mode 'reason-mode
  "eb" 'tuareg-eval-buffereason-mode
  "er" 'tuareg-eval-region
  "ee" 'tuareg-eval-phrase
  )
