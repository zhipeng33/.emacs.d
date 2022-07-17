;;; module -- eaf
;;;
;;; commentary:

;;; code:

(use-package eaf
  :init (require 'eaf)
  :if window-system
  :load-path "~/.emacs.d/lisp/site-lisp/emacs-application-framework"
  :custom
  (eaf-browser-continue-where-left-off t)
  (eaf-browser-enable-adblocker t)
  (browse-url-browser-function 'eaf-open-browser)
  :config
  (require 'eaf-terminal)						;; 终端
  (require 'eaf-browser)						;; 浏览器
  (require 'eaf-pdf-viewer)						;; pdf
  (require 'eaf-camera)							;; 摄像头
  (require 'eaf-mindmap)						;; 思维导图
  (require 'eaf-file-browser)					;; 二维码在线浏览
  (require 'eaf-markdown-previewer)				;; Markdown Previewer
  (require 'eaf-org-previewer)					;; Org Previewer
  (require 'eaf-git)							;; EAF Git Client
  (require 'eaf-image-viewer)					;; EAF Image Viewer
  (require 'eaf-file-manager)					;; EAF File Manager
  (setq eaf-proxy-type "http")					;; eaf-proxy-type
  (setq eaf-proxy-host "127.0.0.1")				;; eaf-proxy-host
  (setq eaf-proxy-port "8889")					;; eaf-proxy-port
  (setq eaf-webengine-default-zoom 1.5)			;; zoom 1.5
  ;; (setq eaf-terminal-font-size '20)				;; term font size 20
  (defalias 'browse-web #'eaf-open-browser))	;; unbind, see more in the Wiki



(provide 'init-eaf)
;;; init-eaf.el ends here
