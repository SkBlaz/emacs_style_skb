
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
    (auto-package-update 2bit go-mode slime py-yapf py-autopep8 flycheck auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;(auto-complete-mode t)
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
(load "~/EmacsModes/dark-mint-theme-master/dark-mint-theme.el")
(add-to-list 'auto-mode-alist '("\\.php$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . html-mode))

(load (expand-file-name "~/.quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")

;;(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; (add-to-list 'load-path "~/.emacs.d/slime/")
;; (require 'slime)
;; (slime-setup '(slime-repl))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(ac-config-default)

(global-auto-complete-mode t)
(global-flycheck-mode t)
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

;; (global-flycheck-mode)
;;(py-yapf enable-on-save)
;;(py-autopep8 enable-on-save)
;;)
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

;;(setq inferior-lisp-program "sbcl")
(electric-pair-mode +1)
