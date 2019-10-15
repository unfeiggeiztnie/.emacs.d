(use-package company
  :defer 2
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(provide 'init-company)
