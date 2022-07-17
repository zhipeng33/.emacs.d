;;; module --- theme
;;;
;;; commentary:

;;; Code:

;; theme
;; (use-package solarized-theme
;;   :hook (after-init . solarized-themes))
;; doom theme
(use-package doom-themes
  :defer nil
  :config (load-theme 'doom-solarized-dark-high-contrast t))

;; minibuffer
(use-package doom-modeline
  :defer nil
  :hook (after-init . doom-modeline-mode)
  :config (setq doom-modeline-height 0
		        doom-modeline-bar-width 0))


(provide 'init-theme)
