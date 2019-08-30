(add-hook 'python-mode-hook
          (lambda ()
            (progn
              (add-to-list 'python-shell-extra-pythonpaths "/home/zw/.emacs.d/.cache/anaconda-mode/0.1.13/jedi-0.13.2-py3.7.egg")
              (setq python-shell-propt-block-regexp "\\.\\.\\.:?")
              (setq importmagic-python-interpreter "/usr/bin/python")
              )))
