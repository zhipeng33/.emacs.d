;;; function -- module
;;; commentary:
;;; used to write some simple functions:

;;; code:

;; 打开.emacs.d/lisp/
(defun open-lisp-dired ()
;;   "Used to quickly jump to Emacs configuration files.
;; By using the \"find-file function\"."
  (interactive)
  (find-file "~/.emacs.d/lisp"))

(defun open-czp-015-program ()
  (interactive)
  (find-file "~/czp-Personal_data/010-Documents/015-program/"))

(shell-command-to-string "explorer.exe C:\\")

(shell-command-to-string "explorer.exe ~/.emacs.d")

(shell-command-to-string
 (encode-coding-string
  (replace-regexp-in-string "/" "\\\\"
		(format "explorer.exe %s" (expand-file-name "~/.emacs.d")))
  'gbk))

(defun consult-directory-externally (file)
  "Open FILE externally using the default application of the system."
  (interactive "fOpen externally: ")
  (if (and (eq system-type 'windows-nt)
	   (fboundp 'w32-shell-execute))
      (shell-command-to-string (encode-coding-string (replace-regexp-in-string "/" "\\\\"
	    (format "explorer.exe %s" (file-name-directory (expand-file-name file)))) 'gbk))
    (call-process (pcase system-type
		    ('darwin "open")
		    ('cygwin "cygstart")
		    (_ "xdg-open"))
		  nil 0 nil
		  (file-name-directory (expand-file-name file)))))

;; (define-key embark-file-map (kbd "E") #'consult-directory-externally)
;;打开当前文件的目录
(defun my-open-current-directory ()
  (interactive)
  (consult-directory-externally default-directory))


(provide 'init-function)
;;; init-function.el ends here
