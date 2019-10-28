(add-hook 'python-mode-hook
          (lambda ()
            (progn
              ;; (add-to-list 'python-shell-extra-pythonpaths "/home/zw/.emacs.d/.cache/anaconda-mode/0.1.13/jedi-0.13.2-py3.7.egg")
              (setq python-shell-propt-block-regexp "\\.\\.\\.:?")
              (setq importmagic-python-interpreter "/usr/bin/python")
              (setq python-test-runner 'pytest)
              ;; (set-default lsp-pyls-configuration-sources ["flake8"])
              ;; (set-default lsp-pyls-plugins-pylint-enabled nil)
              (init-lsp-python-ms)
              )))

(defun init-lsp-python-ms ()
  (use-package lsp-python-ms
    :if (eq python-lsp-server 'mspyls)
    :ensure t
    :config
    (setq lsp-python-ms-executable
          (string-trim (shell-command-to-string
                        "find ~/.vscode/extensions/ -name 'Microsoft.Python.LanguageServer' | sort | tail -1")))
    (setq lsp-python-ms-dir (file-name-directory lsp-python-ms-executable))
    ))
