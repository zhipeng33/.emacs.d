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

;; 宽度、高度、透明度
(setq default-frame-alist '(;; (width . 70)
                            ;; (height . 30)
                            (alpha-background . 90)))
;; (set-frame-parameter nil 'alpha 0.90)

;; 全屏
(toggle-frame-fullscreen)

;; 相对行号
(use-package emacs
  :if window-system
  :hook (prog-mode . display-line-numbers-mode)
  :config
  (setq display-line-numbers-type 'relative)
  (display-line-numbers-mode t))

;; 主题包
(use-package solarized-theme)
;; doom主题
(use-package doom-themes
  :config
  ;; Global settings (defaults)
  (load-theme 'doom-one t)
  ;; minibuffer
  (use-package doom-modeline
    :hook (after-init . doom-modeline-mode)
    :config
    (setq doom-modeline-height 5
		  doom-modeline-bar-width 4)))

;; 彩虹猫进度条
(use-package nyan-mode
  :defer t
  :hook (after-init . nyan-mode)
  :config
  (setq nyan-wavy-trail t
		nyan-animate-nyancat t))

;; 图标支持
(use-package all-the-icons
  :defer t)
(use-package all-the-icons-dired
  :if window-system
  :defer t
  :hook ('dired-mode . 'all-the-icons-dired-mode))

;; 表情符号
(use-package emojify
  :hook (after-init . global-emojify-mode))


(provide 'init-ui)
;;; init-ui.el ends here
