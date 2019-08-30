(evil-leader/set-key "oy" 'youdao-dictionary-search-at-point+)
(evil-leader/set-key "oc" 'comment-region)
(evil-leader/set-key "ou" 'uncomment-region)
(evil-leader/set-key-for-mode 'eww-mode "oq" 'quit-window)
(evil-leader/set-key-for-mode 'eww-mode "ol" 'eww-back-url)
(evil-leader/set-key-for-mode 'eww-mode "or" 'eww-forward-url)
(evil-leader/set-key-for-mode 'eww-mode "oe" 'eww-browse-with-external-browser)
(evil-leader/set-key-for-mode 'org-mode "og" 'org-insert-src-block)
(evil-leader/set-key-for-mode 'org-mode "om" 'org-edit-src-code)
(evil-leader/set-key "oo" 'spacemacs//ipython-notebook-ein:worksheet-insert-cell-below-o)
;;-for-mode 'ein:notebook-multilang-mode
(evil-global-set-key 'hybrid [(control \;)] 'backward-delete-char) ; flyspell-auto-correct-previous-word on insert-mode
;; C-w: spacemacs/backward-kill-word-or-region 
; (evil-global-set-key 'hybrid [(control \.)] 'backward-kill-word) ; flyspell-auto-correct-word
(evil-global-set-key 'hybrid [(control \')] 'redo)
;(evil-global-set-key 'insert "\C-d" 'delete-char) ; evil-shift-left-line
;(evil-global-set-key 'insert "\C-e" 'move-end-of-line) ; evil-copy-from-below

