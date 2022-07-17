;; 设置缓存文件/杂七杂八的文件存放的地址
(setq user-emacs-directory "~/.emacs.d/var")
(setq desktop-dirname "~/.emacs.d/var/desktop-save")
;; 设置Emacs源码位置
(setq source-directory "~/Documents/repoes/emacs-src/src/")
;; 设置自动保存路径前缀
(setq auto-save-list-file-prefix "~/.emacs.d/var/auto-save-list/.saves-")
;; 设置eshell历史记录
(setq eshell-history-file-name "~/.emacs.d/var/eshell/history")
(setq recentf-save-file "~/.emacs.d/var/recentf")
(setq recentf-max-menu-items 20)
(set-default 'truncate-lines t)

;; 解决可能出现的的字符乱码
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;; yes-or-no-p to y-or-n-p
(fset 'yes-or-no-p 'y-or-n-p)

;; 自动刷新被修改过的文件
(global-auto-revert-mode +1)

;; 选中文本后输入会覆盖
(delete-selection-mode +1)

;; 关闭备份
(setq make-backup-files nil auto-save-default nil)

;; 关闭多编辑器同时编辑同一文件时锁文件操作
(setq create-lockfiles nil)

;; 随时重新加载发生修改过的文件
(setq load-prefer-newer t)

;; 关闭字体缓存gc
(setq inhibit-compacting-font-caches nil)

;; 关闭烦人的提示
(setq ring-bell-function 'ignore blink-cursor-mode nil)

;; 任何地方都使用UTF-8
(set-charset-priority 'unicode)
(setq locale-coding-system   'utf-8)    ; pretty
(set-terminal-coding-system  'utf-8)    ; pretty
(set-keyboard-coding-system  'utf-8)    ; pretty
(set-selection-coding-system 'utf-8)    ; please
(prefer-coding-system        'utf-8)    ; with sugar on top
(setq default-process-coding-system '(utf-8 . utf-8))

;; 更友好及平滑的滚动
(setq scroll-step 1
      scroll-margin 6
      hscroll-step 0
      hscroll-margin 10
      scroll-conservatively 500
      scroll-up-aggressively 0.1
      scroll-down-aggressively 0.1
      scroll-preserve-screen-position 'always)

;; 关闭自动调节行高
(setq auto-window-vscroll nil)

;; 关闭自动换行的功能
(setq truncate-partial-width-windows nil)

;; 创建新行的动作
;; 回车时创建新行并且对齐
(global-set-key (kbd "RET") 'newline-and-indent)

;; 取消对齐创建的新行
(global-set-key (kbd "S-<return>") 'comment-indent-new-line)

(setq dired-kill-when-opening-new-dired-buffer t)

;; nil 表示将 tab 替换成空格
;; (setq-default indent-tabs-mode t)

;; tab-width
(setq-default tab-width 4)

;; 历史记录
(use-package savehist
  :ensure nil
  :hook (vertico-mode . savehist-mode)
  :init (setq enable-recursive-minibuffers t ; Allow commands in minibuffers
	      history-length 1000
	      savehist-additional-variables '(mark-ring
					      global-mark-ring
					      search-ring
					      regexp-search-ring
					      extended-command-history)
	      savehist-autosave-interval 300)
  )

;; 回到关闭文件前光标的位置
(use-package saveplace
  :ensure nil
  :init (save-place-mode))

(setq url-proxy-services '(("https" . "127.0.0.1:8889")))

(setq xref-search-program 'ripgrep)
;; (advice-add #'project-find-regexp :override #'ripgrep-regexp)
(provide 'init-basic)
;;; init-basic.el ends here
