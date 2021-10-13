
;; init.el --- Emacs configuration
;; https://realpython.com/emacs-the-best-python-editor/

;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    noctilux-theme
    ein
    elpy
    flycheck
    py-autopep8))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'noctilux t) ;; load theme
(global-linum-mode t) ;; enable line numbers globally
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq backup-inhibited t)
(setq auto-save-default nil)

;; PYTHON CONFIGURATION
;; --------------------------------------

;; https://elpy.readthedocs.io/en/latest/ide.html#interactive-python
(elpy-enable)
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")
;;(setq python-shell-interpreter "python"
;;      python-shell-interpreter-args "-i")

;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (noctilux-theme py-autopep8 material-theme flycheck elpy ein better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
