;;; module -- lsp
;;; commentary:

;;; code:

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :commands (lsp)
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         ((c-mode c++mode sh-mode) . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :custom
  (read-process-output-max (* 1024 1240))
  (lsp-auto-guess-root nil)							;; 使用 projectile/project 自动猜测项目根目录。
  (lsp-auto-configure t)							;; 自动配置lsp-mode主要功能
  (lsp-enable-indentation t)						;; 使用语言服务器提供的文件格式化功能缩进区域
  (lsp-response-timeout 1)							;; 超时前等待语言服务器响应的秒数。如果没有超时，则为零
  (lsp-enable-folding t)							;; 启用/禁用代码折叠支持
  (lsp-enable-links t)								;; 如果非零，则在语言服务器支持的情况下，对文件中链接的所有引用都将变为可点击。
  :config
  (setq lsp-lens-enable t)							;; 顶栏导航
  (setq lsp-headerline-breadcrumb-enable nil)
  (setq lsp-ui-sideline-enable t)
  (setq lsp-ui-sideline-show-code-actions t)
  (setq lsp-modeline-code-actions-enable nil)
  (setq lsp-ui-sideline-show-diagnostics nil)
  (setq lsp-modeline-diagnostics-enable nil)
  (setq lsp-signature-auto-activate nil)
  (setq lsp-prefer-capf t)
  (setq lsp-signature-render-documentation nil)
  (setq lsp-format-buffer 4))

;; lsp-ui
(use-package lsp-ui
  :commands (lsp-ui)
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (setq
   ;; sideline
   lsp-ui-sideline-enable t
   lsp-ui-sideline-show-diagnostics t
   lsp-ui-sideline-show-code-actions t
   lsp-ui-sideline-show-hover t
   lsp-ui-sideline-update-mode 'line
   lsp-ui-sideline-delay 1
   lsp-ui-sideline-show-symbol nil					;; 不在子框显示
   ;; imenu
   lsp-ui-imenu-auto-refresh t						;; lsp-ui-imenu列表自动刷新
   lsp-ui-imenu-kind-position 'top					;; 显示条目种类的地方
   lsp-ui-imenu-buffer-position 'left				;; 显示缓冲窗口的地方
   lsp-ui-imenu-auto-refresh-delay 1.0)				;; lsp-ui-imenu列表刷新延迟
  ;; peek
  lsp-ui-peek-enable t
  lsp-ui-peek-show-directory t
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  ;; doc
  lsp-ui-doc-enable t
  lsp-ui-doc-position 'at-point						;; 文档显示的位置
  lsp-ui-doc-include-signature t					;; 不在右边显示
  lsp-ui-doc-show-with-mouse t						;; 当非零时，将鼠标指针移到符号上以显示文档
  lsp-ui-doc-show-with-cursor t						;; 当非零时，将光标移动到符号上以显示文档
  lsp-ui-doc-delay 2)								;; 显示文档的延迟


(provide 'init-lsp)
;;; init-lsp.el ends here
