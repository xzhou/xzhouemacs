(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(display-time-mode t)
 '(scroll-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Ruby mode
(add-to-list 'load-path "~/.emacs.d/ruby-mode")
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
(setq auto-mode-alist  (cons '(".rb$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '(".rhtml$" . html-mode) auto-mode-alist))

;; tab
(setq default-tab-width 2)
(setq tab-width 2)

;; Don’t want any startup message
(setq inhibit-startup-message   t)

;;; Color scheme
;; Setup a nice theme if we have the color-theme package loaded.
(if (require 'color-theme nil t)
     (if window-system
     	(color-theme-infodoc)
     	      (color-theme-infodoc)))

;;; Emacs Desktop – Saving sessions.
(desktop-load-default)
;(desktop-read)
(setq desktop-save-mode t)
(tool-bar-mode -1)