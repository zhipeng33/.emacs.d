;; -*- lexical-binding: t -*-
(add-to-list 'load-path "~/.emacs.d/lisp/")

;;=====================
;; 基础启动项
;;=====================
(require 'init-package)
(require 'init-basic)
(require 'init-function)
(require 'init-key_bindings)

;;=====================
;; 功能增强
;;=====================
(require 'init-company)

;;=====================
;; UI
;;=====================
(require 'init-ui)

;;=====================
;; UI
;;=====================
(require 'init-lsp)

;;=====================
;; 加载手动配置
;;=====================
(setq custom-file (expand-file-name "~/.emacs.d/lisp/custom.el"))
(load custom-file 'no-error 'no-message)

;;; init-config.el ends here
