(defun chomp-end (str)
  "Chomp tailing whitespace from STR."
  (replace-regexp-in-string (rx (* (any " \t\n")) eos)
                            ""
                            str))

(let ((support-base-dir (concat (replace-regexp-in-string "refmt" "" (file-truename (chomp-end (shell-command-to-string "which refmt")))) ".."))
      (merlin-base-dir (concat (replace-regexp-in-string "ocamlmerlin" "" (file-truename (chomp-end (shell-command-to-string "which ocamlmerlin")))) "..")))
  ;; Add npm merlin.el to the emacs load path and tell emacs where to find ocamlmerlin
  (add-to-list 'load-path (concat merlin-base-dir "/share/emacs/site-lisp/"))
  (setq merlin-command (concat merlin-base-dir "/bin/ocamlmerlin"))

  ;; Add npm reason-mode to the emacs load path and tell emacs where to find refmt
  (add-to-list 'load-path (concat support-base-dir "/share/emacs/site-lisp"))
  (setq refmt-command (concat support-base-dir "/bin/refmt")))

(require 'reason-mode)
(require 'merlin)
(add-hook 'reason-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'refmt-before-save)
            (merlin-mode)
            (utop-minor-mode)))

(setq utop-command "opam config exec -- rtop -emacs")
; (add-hook 'reason-mode-hook #'utop-minor-mode) 

; (setq merlin-ac-setup t)
