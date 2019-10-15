(defvar my-packages '(better-defaults
		      projectile
		      clojure-mode
		      cider))
(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(use-package projectile
  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1))

(use-package cider)

(provide 'init-clojuresetup)       ;; http://clojure-doc.org/articles/tutorials/emacs.html 
