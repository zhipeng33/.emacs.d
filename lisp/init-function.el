;;; module -- function
;;;
;;; commentary:
;;; used to write some simple functions:

;;; code:

;; 系统判断
(defconst *is-mac* (eq system-type 'darwin))
(defconst *is-linux* (eq system-type 'gnu/linux))
(defconst *is-windows* (or (eq system-type 'ms-dos) (eq system-type 'windows-nt)))

;; 打开.emacs.d/lisp/
(defun czp-open-lisp-dired ()
  "Used to quickly jump to Emacs configuration files.
  By using the \"find-file function\"."
  (interactive)
  (find-file "~/.emacs.d/lisp"))

;; open folder
(defun czp-open-015-program ()
  "Open the 015-program folder"
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
					( "xdg-open"))
				  nil 0 nil
				  (file-name-directory (expand-file-name file)))))

;; (define-key embark-file-map (kbd "E") #'consult-directory-externally)
;;打开当前文件的目录
(defun my-open-current-directory ()
  (interactive)
  (consult-directory-externally default-directory))

;; Get the current buffer file name without directory.
(defun file-name-only ()
  "Get the current buffer file name without directory."
  (file-name-nondirectory (buffer-name)))

;; Get the currennt buffer file name without directory and extension
(defun file-name-only-noext ()
  "Get the currennt buffer file name without directory and extension."
  (file-name-sans-extension (file-name-only)))

(provide 'init-function)
;;; init-function.el ends here
