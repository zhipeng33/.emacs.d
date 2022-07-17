;;; module --- c/c++ language support
;;; commentary:

;;; code:

(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp)))
  :config
  (setq ccls-executable "/path/to/ccls/Release/ccls")
  ;; (setq ccls-args '("--log-file=/tmp/ccls.log"))
  )

;; Indent format
(setq-default c-default-style "linux"
			  c-basic-offset 4)

;; Compile a single file (c file).
(defun czp-gcc-compile ()
  "Compile a single file (c file)."
  (interactive)
  (async-shell-command (format
						"gcc -g -O0 -o %s %s"
						(file-name-only-noext)
						(buffer-file-name))))

;; Compile a single file (c++ file).
(defun czp-g++-compile ()
  "Compile a single file (c file)."
  (interactive)
  (async-shell-command (format
						"g++ -g -O0 -o %s %s"
						(file-name-only-noext)
						(buffer-file-name))))

;; Intelligently compile c/c++ projects
(defun sl-compile-project-or-file ()
  "Compile current file just smart."
  (interactive)
  (cond ((and (boundp 'ede-minor-mode) ede-minor-mode (ede-current-project))
         (ede-compile-target))
        ((file-readable-p "Makefile")
         (compile compile-command))
        ((file-readable-p "makefile")
         (compile compile-command))
        ((string= "c-mode" major-mode)
         (let ((default-directory temporary-file-directory))
           (async-shell-command (format "gcc -g -O0 -o %s %s && ./%s"
										 (file-name-only-noext)
										 (buffer-file-name)
										 (file-name-only-noext)))))
        ((string= "c++-mode" major-mode)
         (let ((default-directory temporary-file-directory))
           (async-shell-command (format "g++ -g -O0 -o %s %s && ./%s"
										 (file-name-only-noext)
										 (buffer-file-name)
										 (file-name-only-noext)))))
         ((call-interactively 'compile))))


(provide 'init-c++)
;;; init-lsp.el ends here
