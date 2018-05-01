(add-hook 'python-mode-hook
          (lambda ()
            (progn
              (add-to-list 'python-shell-extra-pythonpaths "/home/zw/.emacs.d/.cache/anaconda-mode/0.1.9/jedi-0.12.1-py3.6.egg")
              (add-to-list 'python-shell-extra-pythonpaths "/home/zw/.emacs.d/.cache/anaconda-mode/0.1.9/parso-0.2.0-py3.6.egg")
              (add-to-list 'python-shell-extra-pythonpaths "/home/zw/.emacs.d/.cache/anaconda-mode/0.1.9/service_factory-0.1.5-py3.6.egg"))))
