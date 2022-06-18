;; 递归遍历加载路径
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file 'no-error 'no-message)

;;=====================
;; 加载手动配置
;;=====================
(setq custom-file (expand-file-name "~/.emacs.d/lisp/custom.el"))
(load custom-file 'no-error 'no-message)

;;; init-config.el ends here
