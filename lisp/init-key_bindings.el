;;; modules --- key bindings
;;; commentary:

;;; code:

(global-set-key (kbd "<f5>") 'sl-compile-project-or-file)
(global-set-key (kbd "<f8>") 'czp-open-lisp-dired)
(global-set-key (kbd "C-c e P") 'eaf-open-pdf-from-history)
(global-set-key (kbd "C-c e f") 'eaf-open-file-manager)
(global-set-key (kbd "C-c e t") 'eaf-open-terminal)
(global-set-key (kbd "C-c e o") 'eaf-open)
(global-set-key (kbd "C-c e b") 'eaf-open-browser-other-window)
(global-set-key (kbd "C-c e B") 'eaf-open-bookmark)
(eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding)
(eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding)
(eaf-bind-key take_photo "p" eaf-camera-keybinding)
(eaf-bind-key nil "M-q" eaf-browser-keybinding)



(provide 'init-key_bindings)
;;; init-key_bindings.el ends here
