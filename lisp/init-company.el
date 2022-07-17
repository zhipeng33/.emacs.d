;;; Module --- Completion
;;; 
;;; Commentary:

;;; Code:
(use-package company
  :hook ((lsp-mode . company-mode)
		 (prog-mode . company-mode)
		 (text-mode . company-mode))
  :config
  (setq company-file t)											;; 系统路径
  (setq company-idle-delay 0.0)									;; 启动延迟
  (setq company-minimum-prefix-length 1)						;; 激活字符数
  (setq company-dabbrev-code-everywhere t)						;; 是依赖emacs当前打开的buffer作为自动补全候选项来源
  (setq company-dabbrev-code-modes t)
  (setq company-dabbrev-code-other-buffers 'all)
  (setq company-dabbrev-downcase nil)
  (setq company-dabbrev-ignore-case t)
  (setq company-dabbrev-other-buffers 'all)
  (setq company-show-numbers t)									;; 给选项编号 (按快捷键 M-1、M-2 等等来进行选择).
  (setq company-transformers '(company-sort-by-occurrence))		;; 根据选择的频率进行排序，读者如果不喜欢可以去掉
  (setq company-tooltip-align-annotations t))					;; 当非 nil 时，将注释与右侧工具提示边框对齐。


(provide 'init-company)
;;; init-company.el ends here
