;;; module -- lsp
;;; commentary:

;;; code:

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :commands (lsp)
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (after-init . lsp-mode)
         ((c-mode c++mode sh-mode) . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :custom
  (read-process-output-max (* 1024 1240))
  ;; 使用 projectile/project 自动猜测项目根目录。
  (lsp-auto-guess-root nil)
  ;; 自动配置lsp-mode主要功能
  (lsp-auto-configure t)
  ;; 使用语言服务器提供的文件格式化功能缩进区域
  (lsp-enable-indentation t)
  ;; 超时前等待语言服务器响应的秒数。如果没有超时，则为零
  (lsp-response-timeout 3)
  ;; 启用/禁用代码折叠支持
  (lsp-enable-folding t)
  ;; 如果非零，则在语言服务器支持的情况下，对文件中链接的所有引用都将变为可点击。
  (lsp-enable-links t)  
  :config
  ;; 顶栏导航
  (setq lsp-lens-enable t
        lsp-headerline-breadcrumb-enable nil
        lsp-ui-sideline-enable t
        lsp-ui-sideline-show-code-actions t
        lsp-modeline-code-actions-enable nil
        lsp-ui-sideline-show-diagnostics nil
        lsp-modeline-diagnostics-enable nil
        lsp-signature-auto-activate nil
        lsp-prefer-capf t
        lsp-signature-render-documentation nil
		lsp-format-buffer 4))

;; lsp-ui
(use-package lsp-ui
  :commands (lsp-ui)
  :hook (after-init . lsp-ui-mode)
  :config
  (setq
   ;; sideline
   lsp-ui-sideline-show-diagnostics t
   ;; sideline
   lsp-ui-sideline-show-code-actions t
   ;; sideline
   lsp-ui-sideline-show-hover t
   ;; sideline
   lsp-ui-sideline-update-mode 'line
   ;; sideline
   lsp-ui-sideline-delay 1
   ;; 启用“lsp-ui-peek”
   lsp-ui-peek-enable t
   ;; 显示文件目录
   lsp-ui-peek-show-directory t
   ;; lsp-ui-imenu列表自动刷新
   lsp-ui-imenu-auto-refresh t
   ;; lsp-ui-imenu列表刷新延迟
   lsp-ui-imenu-auto-refresh-delay 1.0)
  ;; peek
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  ;; doc
  (setq
   lsp-ui-doc-enable t
   ;; 文档显示的位置
   lsp-ui-doc-position 'at-point
   ;; 不在子框显示
   lsp-ui-doc-include-signature t
   ;; 不在右边显示
   lsp-ui-sideline-show-symbol nil
   lsp-ui-sideline-enable t
   lsp-signature-render-documentation t ;
   ;; 显示文档的延迟
   lsp-ui-doc-delay 2))

(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp)))
  :config
  (setq ccls-executable "/path/to/ccls/Release/ccls")
  ;; (setq ccls-args '("--log-file=/tmp/ccls.log"))
  )




(provide 'init-lsp)
;;; init-lsp.el ends here
