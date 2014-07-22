;; Turn off mouse interface early in startup to avoid momentary display
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please... jeez
(setq inhibit-startup-screen t)

;; Adds Ctrl-x [arrow key] window arrangement history keybinding
(winner-mode)

;; Adds Ctrl-[arrow key] window movement
(windmove-default-keybindings)

(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/ffip-conf.el")

(load-theme 'solarized-dark t)
(require 'yasnippet)
(yas-global-mode 1)

;;(require 'auto-complete)
;; Try Icicles instead!
(require 'icicles)
(require 'magit) 
(require 'magit-find-file) ;; if not using the ELPA package
(global-set-key (kbd "C-c p") 'magit-find-file-completing-read)


(load "~/.emacs.d/jvm.el")


;;(require 'ensime)
;;(require 'scala-mode2)
;;(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
;;(add-hook 'java-mode-hook 'ensime-scala-mode-hook)

;;(add-to-list 'auto-mode-alist '("\.scala" . scala-mode2) '("\.sbt\'" . scala-mode2) )

(require 'dirtree)
(
(show-paren-mode 1)
(setq show-paren-delay 0)

(ido-mode)
