;;; module -- ui
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
;; (toggle-frame-fullscreen)

;; 宽度、高度、透明度
;; (setq default-frame-alist '((width . 80)
;;                             (height . 35)
;;                             (alpha-background . 95)))
(set-frame-parameter nil 'alpha 0.93)

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
  :hook (prog-mode . highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-method 'bitmap
		highlight-indent-guides-responsive 'nil
		;; highlight-indent-guides-auto-odd-face-perc '300
		;; highlight-indent-guides-auto-even-face-perc '300
		highlight-indent-guides-auto-character-face-perc '30))




(provide 'init-ui)
;;; init-ui.el ends here
