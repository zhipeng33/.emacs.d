;; -*- lexical-binding: t -*-
;; . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
;;                 _              __                                 
;;   ___ _____ __ ( )___    ___  / _|   ___ _ __ ___   __ _  ___ ___ 
;;  / __|_  / '_ \|// __|  / _ \| |_   / _ \ '_ ` _ \ / _` |/ __/ __|
;; | (__ / /| |_) | \__ \ | (_) |  _| |  __/ | | | | | (_| | (__\__ \
;;  \___/___| .__/  |___/  \___/|_|    \___|_| |_| |_|\__,_|\___|___/
;;          |_|
;;  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

;; after-init-hook
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'after-init-hook #'(lambda () (setq gc-cons-threshold 800000)))

;; update config path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;;=====================
;; 基础启动项
;;=====================
(require 'init-package)
(require 'init-basic)
(require 'init-function)

;;=====================
;; 功能增强
;;=====================
(require 'init-company)
(require 'init-vertico)

;;=====================
;; UI
;;=====================
(require 'init-ui)
(require 'init-font)
(require 'init-theme)

;;=====================
;; LSP
;;=====================
(require 'init-c++)
(require 'init-lsp)
(require 'init-yasnippet)
(require 'init-dap)

;;=====================
;; tools
;;=====================
(require 'init-tools)
(require 'init-eaf)
(require 'init-key_bindings)

;;=====================
;; 加载手动配置
;;=====================
(setq custom-file (expand-file-name "~/.emacs.d/lisp/custom.el"))
(load custom-file 'no-error 'no-message)
;;; init-config.el ends here
(put 'dired-find-alternate-file 'disabled nil)
