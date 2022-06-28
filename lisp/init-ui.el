;;;module -- ui
;;;
;;; commentary:

;;; code:
;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭菜单栏
(menu-bar-mode -1)

;; 高亮当前行
(if window-system (global-hl-line-mode t))

;; 关闭滚动条
(set-scroll-bar-mode nil)

;; 全屏
(toggle-frame-fullscreen)

;; 宽度、高度、透明度
(setq default-frame-alist '((width . 1000)
                            (height . 10000)
                            (alpha-background . 90)))
;; (set-frame-parameter nil 'alpha 0.9)

;; 关闭GUI功能
(setq use-file-dialog nil
      use-dialog-box nil
      inhibit-startup-screen t
      inhibit-startup-message t)

;; 相对行号
(use-package emacs
  :if window-system
  :hook (prog-mode . display-line-numbers-mode)
  :config
  (setq display-line-numbers-type 'relative)
  (display-line-numbers-mode t))

;; 主题包
;; (use-package solarized-theme
;;   :hook (after-init . solarized-themes))
;; doom主题
(use-package doom-themes
  :defer nil
  :config (load-theme 'doom-one t))

;; minibuffer
(use-package doom-modeline
  :defer nil
  :hook (after-init . doom-modeline-mode)
  :config (setq doom-modeline-height 0
		        doom-modeline-bar-width 0))

;; 彩虹猫进度条
(use-package nyan-mode
  :hook (after-init . nyan-mode)
  :config (setq nyan-wavy-trail t
		        nyan-animate-nyancat t))

;; 图标支持
(use-package all-the-icons
  :if window-system)
(use-package all-the-icons-dired
  :if window-system
  :hook ('dired-mode . 'all-the-icons-dired-mode))

;; 表情符号
(use-package emojify
  :hook (after-init . global-emojify-mode))

;; 缩进线
(use-package highlight-indent-guides
  :hook ((after-init . highlight-indent-guides-mode)
         (prog-mode . highlight-indent-guides-mode))
  :config
  (setq highlight-indent-guides-method 'character
		highlight-indent-guides-responsive 'stack
		;; highlight-indent-guides-auto-odd-face-perc '10
		;; highlight-indent-guides-auto-even-face-perc '80
		;; highlight-indent-guides-auto-character-face-perc '15
        ))

;; keycast-mode
(use-package keycast
  :hook (after-init . keycast-mode)
  :init (add-to-list 'global-mode-string '("" keycast-mode-line)))


(provide 'init-ui)
;;; init-ui.el ends here
