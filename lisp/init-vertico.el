;;; module -- vertico
;;;
;;; commentary:

;;; code:

;; VERTical Interactive COmpletion
(use-package vertico
  :hook (after-init . vertico-mode)  
  :init (vertico-mode t))

;; Optionally use the `orderless' completion style (模糊匹配)
(use-package orderless
  :init
  ;; Configure a custom style dispatcher (see the Consult wiki)
  ;; (setq orderless-style-dispatchers '(+orderless-dispatch)
  ;;       orderless-component-separator #'orderless-escapable-split-on-space)
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))

(use-package marginalia
  :hook (after-init . marginalia-mode)
  :init (marginalia-mode t))

(use-package embark
  :bind
  (("C-." . embark-act)         ;; pick some comfortable binding
   ("C-;" . embark-dwim)        ;; good alternative: M-.
   ("C-h B" . embark-bindings)))

(provide 'init-vertico)
;;; init-vertico.el ends here
