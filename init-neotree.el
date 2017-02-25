(defun zw-neotree-find-project-root ()
  (interactive)
  (let ((origin-buffer-file-name (buffer-file-name))
        (origin-buffer (current-buffer)))
    (neotree-find (projectile-project-root))
    (neotree-find origin-buffer-file-name)
    (switch-to-buffer origin-buffer)))

(evil-leader/set-key "px" 'zw-neotree-find-project-root)
