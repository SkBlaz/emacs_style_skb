;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "https://melpa.org/packages/")
   t))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
	(rust-mode go-mode flycheck pyimport py-isort py-autopep8 yapfify py-yapf python-docstring auto-complete)))
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)

(add-to-list 'package-archives
             '("MELPA Stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(require 'package)
(add-to-list 'package-archives
             '("elpy" . "https://jorgenschaefer.github.io/packages/"))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-to-list 'load-path "~/EmacsModes/ESS/lisp/")
(add-to-list 'load-path "~/EmacsModes/")
;;(load "ess-site")
(global-linum-mode 1)
(load "dark-mint-theme-master/dark-mint-theme.el")
(add-to-list 'auto-mode-alist '("\\.php$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . html-mode))

(require 'package)

;;(auto-complete-mode t)
;;(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; (add-to-list 'load-path "~/.emacs.d/slime/")
;; (require 'slime)
;; (slime-setup '(slime-repl))

(package-initialize)
;; (elpy-enable)
;; (elpy-use-cpython "/usr/bin/python3")
;;(elpy-use-ipython "
;;(elpy-use-cpython "/usr/bin/python3")
;;
;;(ac-config-default)
;; (setq TeX-PDF-mode t)
;;(latex-preview-pane-enable)


;; (setq python-shell-interpreter "ipython"
;;     python-shell-interpreter-args "--simple-prompt -i")
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)  ;load and activate packages, including auto-complete
(require 'auto-complete)
(global-auto-complete-mode t)
(setq-default tab-width 4)
;;(go-mode t)

(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "/usr/bin/sbcl")

(require 'package)
;; (add-to-list 'package-archives
;;              '("melpa" . "https://melpa.org/packages/") t)
;; (package-initialize)
;; (package-refresh-contents)

(require 'rust-mode)
(setq rust-format-on-save t)
