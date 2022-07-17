;;; module --- some extension tools
;;; Commentary:

;;; Code:

;; which-key
(use-package which-key
  :hook (after-init . which-key-mode)
  :config
  (setq which-key-show-prefix 'left)
  (which-key-setup-side-window-right-bottom))

;; keycast-mode
(use-package keycast
  :hook (after-init . keycast-mode)
  :init (add-to-list 'global-mode-string '("" keycast-mode-line)))

;; ripgrep
(use-package ripgrep)

(provide 'init-tools)
;;; init-tools.el ends here
