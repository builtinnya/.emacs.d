;;; GNU Emacs initialization entry point

;; Cask - Emacs dependency manager
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Pallet - Emacs package management tool
(require 'pallet)

(defvar init-root-dir (file-name-directory load-file-name)
  "The directory that contains all the initialization files.")

(defvar library-dir (expand-file-name "lib" init-root-dir)
  "The directory that contains internal libraries.")

(defvar setup-dir (expand-file-name "setup" init-root-dir)
  "The directory that contains emacs-lisp files for setup.")

(defvar preferences-dir (expand-file-name "preferences" init-root-dir)
  "The directory that contains preference files.")

(defvar snippet-dir (expand-file-name "snippets" init-root-dir)
  "The directory that contains snippets.")

(defvar vendor-dir (expand-file-name "vendor" init-root-dir)
  "The directory that contains third-party libraries.")

(defvar savefiles-dir (expand-file-name "savefiles" init-root-dir)
  "The directory that contains savefiles and other generated files.")

(defun add-vendor-to-load-path (vendor)
  "Add a third-party library directory to the load path."
  (add-to-list 'load-path (expand-file-name vendor vendor-dir)))

;; Add to load-path: internal libraries
(add-to-list 'load-path library-dir)

;; Add to load-path: setup files
(add-to-list 'load-path setup-dir)

;; Load common setup
(require 'common-setup)

;; Load OSX specific setup
(when (eq system-type 'darwin)
  (require 'osx-setup))

;; Set up user interface
(require 'ui-setup)

;; Set up extra whitespace visualization/elimination
(require 'whitespace-setup)

;; Set up highlighting
(require 'highlighting-setup)

;; Set up on-the-fly spell checking
(require 'flyspell-setup)

;; Set up on-the-fly syntax checking
(require 'flycheck-setup)

;; Set up auto-completion
(require 'auto-complete-setup)

;; Set up template system
(require 'yasnippet-setup)

;; Set up Ido (Interactively DO things) mode.
;; Ido makes it a lot easier to switch between buffers and to open files.
(require 'ido-setup)

;; Set up incremental completion and selection narrowing framework
(require 'helm-setup)

;; Set up TRAMP - remote file editing package.
;; TRAMP can be used for sudo access.
(require 'tramp-setup)

;; Set up markdown-mode
(require 'markdown-setup)

;; Set up multiple-cursors
(require 'multiple-cursors-setup)

;; Set up key-bindings
(require 'key-bindings-setup)
