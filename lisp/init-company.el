;;; Module --- Completion
;;; comm
;;;

;;; Code:
(use-package company
  :hook ((lsp-mode . company-mode)
		 (prog-mode . company-mode)
		 (text-mode . company-mode))
  :config
  (setq company-file t                    ;系统路径
        company-idle-delay 0.0            ;启动延迟
        company-minimum-prefix-length 2   ;激活字符数
        company-dabbrev-code-everywhere t ;是依赖emacs当前打开的buffer作为自动补全候选项来源
        company-dabbrev-code-modes t
        company-dabbrev-code-other-buffers 'all
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case t
        company-dabbrev-other-buffers 'all
        ))


(provide 'init-company)
;;; init-company.el ends here
