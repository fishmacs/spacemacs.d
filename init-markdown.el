(setq markdown-command "markdown2")

(defun browse-content ()
  (interactive)
  (markdown-mode)
  (markdown-preview)
  )

(evil-leader/set-key "ow" 'browse-content)
