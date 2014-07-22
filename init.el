;; Turn off mouse interface early in startup to avoid momentary display
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please... jeez
(setq inhibit-startup-screen t)

(load "~/.emacs.d/my-packages.el")

(load-theme 'solarized-dark t)
(require 'yasnippet)
(yas-global-mode 1)

(require 'auto-complete)
(require 'magit) 
(require 'magit-find-file) ;; if not using the ELPA package
(global-set-key (kbd "C-c p") 'magit-find-file-completing-read)

(require 'scala-mode2)
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(add-to-list 'auto-mode-alist '("\.scala" . scala-mode2) '("\.sbt\'" . scala-mode2) )

(require 'dirtree)
(show-paren-mode 1)
(setq show-paren-delay 0)
