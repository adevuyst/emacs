;; PACAKGE ARCHIVES
(require 'cl)

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)  
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
)

;; INSTALL PACKAGES IF THEY DON'T EXIST

(defvar required-packages
  '(
    magit
    yasnippet
    auto-complete
    magit-find-file
    scala-mode2
    ensime
    dirtree
    solarized-theme
    find-file-in-project
    find-file-in-repository
    protobuf-mode 
    icicles
    markdown-mode
    sbt-mode
    ess
    ess-R-data-view
    ess-R-object-popup
  ) "a list of packages to ensure are installed at launch.")

; method to check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))
