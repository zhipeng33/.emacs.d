;; -*- lexical-binding: t -*-
(add-to-list 'load-path "~/.emacs.d/lisp/")

;;=====================
;; 基础启动项
;;=====================
(require 'init-package)
(require 'init-basic)
(require 'init-function.el)
(require 'init-key_bindings.el)

;;=====================
;; 加载手动配置
;;=====================
(setq custom-file (expand-file-name "~/.emacs.d/lisp/custom.el"))
(load custom-file 'no-error 'no-message)

;;; init-config.el ends here
