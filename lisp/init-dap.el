;;; function -- debugging tools
;;; commentary:
;;; used to write some simple functions:

;;; code:

;; (use-package dap-mode
;;   :after lsp-mode
;;   :commands dap-debug
;;   :hook ((prog-mode . dap-ui-mode) (prog-mode . dap-mode))
;;   :config
;;   (require 'dap-erlang)
;;   (setq dap-python-debugger 'debugpy)
;;   (defun dap-python--pyenv-executable-find (command)
;;     (with-venv (executable-find "python")))

;;   (add-hook 'dap-stopped-hook
;;             (lambda (arg) (call-interactively #'dap-hydra))))


(provide 'init-dap)
;;; init-dap.el ends here
