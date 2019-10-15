(use-package smartparens-config
  :defer 2
  :ensure smartparens
  :config (progn (show-smartparens-global-mode t)
		 (add-hook 'progn-mode-hook 'turn-on-smart-parens-strict-mode)
		 (add-hook 'markdown-mode-hook 'turn-on-smart-parens-strict-mode))) 
		 
(provide 'init-smartparens)
