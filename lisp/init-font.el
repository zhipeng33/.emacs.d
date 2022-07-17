;;; module --- font
;;;
;;; Commentary:

;;; Code:

;; 通过修改字体解决 Windows 上 Emacs 的卡顿
(use-package emacs
  :if (display-graphic-p)
  :config
  ;; Font settings
  (if *is-windows*
      (progn
	(set-face-attribute 'default nil :font "Microsoft Yahei Mono 9")
	(dolist (charset '(kana han symbol cjk-misc bopomofo))
          (set-fontset-font (frame-parameter nil 'font) charset (font-spec :family "Microsoft Yahei Mono" :size 12))))
    (set-face-attribute 'default nil :font (font-spec :family "Meslo LG S" :size 20)))) ;Meslo LG S 13, Sarasa Mono Slab SC

(set-fontset-font t 'unicode (font-spec :family "Meslo LG S" :size 20))
(set-fontset-font t '(#x2ff0 . #x9ffc) (font-spec :family "Sarasa Mono Slab SC" :size 20 :weight 'bold))

(provide 'init-font)
;;; init-font.el ends here.
