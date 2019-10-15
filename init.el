(setq gc-cons-threshold (* 50 1000 1000))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'load-path "~/elisp")
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(setq use-package-verbose t)
(setq use-package-always-ensure t)
(require 'use-package)
;;(use-package auto-compile
;;  :config (auto-compile-on-load-mode))
(setq load-prefer-newer t)
 
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq-default line-spacing 6)
(setq-default help-window-select t)

(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))

;;(set-frame-font "Source Code Pro 11")
;;(set-frame-font "Monaco 9")
;;(set-frame-font "Monaco 10")
(set-face-attribute 'default nil :font "Ubuntu Mono 10")
;;(set-face-attribute 'default nil :font "Source Code Pro 10")
;;(set-face-attribute 'default nil :font "Monaco 10")
(set-face-attribute 'mode-line nil :font "Monaco 10")
(fringe-mode '(20 . 10))
(setq-default line-spacing 6)
(setq blink-cursor-blinks 1)

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))

(setq doom-modeline-heigt 15)

;; (use-package zenburn-theme
;;   :config
;;   (load-theme 'zenburn t)
;;   )
(use-package heroku-theme
  :config
  (load-theme 'heroku t))

;;(use-package gruvbox-theme
;;  :config
;;  (load-theme 'gruvbox-light-medium t)
;;)
 

(setq-default indicate-buffer-boundaries 'left)
(setq-default inicate-empty-lines 1)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(use-package hl-line
  :config
  (global-hl-line-mode +1))

(use-package paren
  :defer 2
  :config
  (show-paren-mode 1))

(use-package avy
  :defer 2
  :ensure t
  :bind (("C-;" . avy-goto-word-or-subword-1)
         ("C-," . avy-goto-char))
  :config
  (setq avy-background t))


(require 'init-ivy)
(require 'init-company)
(require 'init-which-key)
(require 'init-evil)
(require 'init-smartparens)
(require 'init-undo-tree)
(require 'init-clojuresetup)
