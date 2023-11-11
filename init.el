;; TITLE: GNU emacs config file.
;; AUTHOR: Yuval Dean
;; DATE: 29.8.23

;; =========================================================
;; Package settings:
;; =========================================================

(require 'package) ;; Emacs built-in

;; set package.el repositories
(add-to-list 'package-archives '("org" . "https://orgmode.org.elpa/"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; initialize built-in package managment
(package-initialize)

;; update packages list if we are on a new install
(package-refresh-contents)
(package-install 'use-package)
(eval-and-compile
  (setq use-package-always-ensure t
	use-package-expand-minimally t))

;; =========================================================
;; Backup settings:
; =========================================================

(setq backup-directory-alist `(("." . "~/emacs_saves")))  ;; emacs backups will be saves to a specified location
(setq backup-by-copying t)

;; =========================================================
;; General settings:
;; =========================================================

(show-paren-mode 1) ; visialize matching parenthesees
(global-hl-line-mode 1) ; highlight current line
(global-display-line-numbers-mode t)
(setq inhibit-startup-message t) ; no start page
(setq display-line-numbers-type t)

(electric-pair-mode 1) ; matching parenthesis
(setq electric-pair-preserce-balance nil)

(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

(use-package timu-spacegrey-theme
  :ensure t
  :config
  (load-theme 'timu-spacegrey t))
;;  (load-theme 'modus-vivendi t)


;; =========================================================
;; Language support:
;; =========================================================


;; =========================================================
;; Terminal:
;; =========================================================

;; Use as the default terminal in emacs.
(use-package eat
  :ensure t)

;; =========================================================
;; Auto complete:
;; =========================================================

;;(use-package corfu
;;   optional customizations
;;   :custom
;;   (corfu-cycle t)                 Enable cycling for `corfu-next/previous'
;;   (corfu-auto t)                  Enable auto completion
;;   (corfu-separator ?\s)           Orderless field separator
;;   (corfu-quit-at-boundary nil)    Never quit at completion boundary
;;   (corfu-quit-no-match nil)       Never quit, even if there is no match
;;   (corfu-preview-current nil)     Disable current candidate preview
;;   (corfu-preselect 'prompt)       Preselect the prompt
;;   (corfu-on-exact-match nil)      Configure handling of exact matches
;;   (corfu-scroll-margin 5)         Use scroll margin
;;
;;   Enable Corfu only for certain modes.
;;   :hook ((prog-mode . corfu-mode)
;;          (shell-mode . corfu-mode)
;;          (eshell-mode . corfu-mode))
;;
;;   Recommended: Enable Corfu globally.
;;   This is recommended since Dabbrev can be used globally (M-/).
;;   See also `global-corfu-modes'.
;;  :init
;;  (global-corfu-mode))
;;
;; A few more useful configurations...
;;(use-package emacs
;;  :init
;;   TAB cycle if there are only few candidates
;;  (setq completion-cycle-threshold 5)
;;
;;   Emacs 28: Hide commands in M-x which do not apply to the current mode.
;;   Corfu commands are hidden, since they are not supposed to be used via M-x.
;;   (setq read-extended-command-predicate
;;         #'command-completion-default-include-p)
;;
;;   Enable indentation+completion using the TAB key.
;;   `completion-at-point' is often bound to M-TAB.
;;  (setq tab-always-indent 'complete))
;;
;; Enable auto completion and configure quitting
;;(setq corfu-auto t
;;      corfu-quit-no-match 'separator)  or t
;;
;;(setq-local corfu-auto        t
;;            corfu-auto-delay  0  TOO SMALL - NOT RECOMMENDED
;;            corfu-auto-prefix 1  TOO SMALL - NOT RECOMMENDED
;;            completion-styles '(basic))
;;
;;
;;(defun corfu-enable-always-in-minibuffer ()
;;  "Enable Corfu in the minibuffer if Vertico/Mct are not active."
;;  (unless (or (bound-and-true-p mct--active)
;;              (bound-and-true-p vertico--input)
;;              (eq (current-local-map) read-passwd-map))
;;     (setq-local corfu-auto nil)  Enable/disable auto completion
;;    (setq-local corfu-echo-delay nil  Disable automatic echo and popup
;;                corfu-popupinfo-delay nil)
;;    (corfu-mode 1)))
;;(add-hook 'minibuffer-setup-hook #'corfu-enable-always-in-minibuffer 1)
;;
;; #+END_SRC
;;
;;
;;
;;
;;(custom-set-variables
;;  custom-set-variables was added by Custom.
;;  If you edit it by hand, you could mess it up, so be careful.
;;  Your init file should contain only one such instance.
;;  If there is more than one, they won't work right.
;; '(package-selected-packages
;;   '(use-package xelb vertico timu-spacegrey-theme rust-mode eat corfu cmake-ide)))
;;(custom-set-faces
;;  custom-set-faces was added by Custom.
;;  If you edit it by hand, you could mess it up, so be careful.
;;  Your init file should contain only one such instance.
;;  If there is more than one, they won't work right.
;; )
;;
;;(custom-set-variables
;;  custom-set-variables was added by Custom.
;;  If you edit it by hand, you could mess it up, so be careful.
;;  Your init file should contain only one such instance.
;;  If there is more than one, they won't work right.
;; '(package-selected-packages
;;   '(use-package xelb vertico timu-spacegrey-theme rust-mode eat corfu cmake-ide)))
;;(custom-set-faces
;;  custom-set-faces was added by Custom.
;;  If you edit it by hand, you could mess it up, so be careful.
;;  Your init file should contain only one such instance.
;;  If there is more than one, they won't work right.
;; )
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(use-package xelb vertico timu-spacegrey-theme rust-mode eat corfu cmake-ide)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
