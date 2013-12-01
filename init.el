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

;; Load core library
(require 'my-core)

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

;; Set up parenthesis
(require 'parens-setup)

;; Set up on-the-fly spell checking
(require 'flyspell-setup)

;; Set up on-the-fly syntax checking
(require 'flycheck-setup)

;; Set up Semantic mode
(require 'semantic-setup)

;; Set up auto-completion
(require 'auto-complete-setup)

;; Set up template system
(require 'yasnippet-setup)

;; Set up Ido (Interactively DO things) mode.
;; Ido makes it a lot easier to switch between buffers and to open files.
(require 'ido-setup)

;; Set up Imenu mode - menus for accessing locations in documents
(require 'imenu-setup)

;; Set up Ag, the silver searcher
(require 'ag-setup)

;; Set up incremental completion and selection narrowing framework
(require 'helm-setup)

;; Set up Projectile - project manager
(require 'projectile-setup)

;; Set up Popwin - popup window manager
(require 'popwin-setup)

;; Set up TRAMP - remote file editing package.
;; TRAMP can be used for sudo access.
(require 'tramp-setup)

;; Set up markdown-mode
(require 'markdown-setup)

;; Set up multiple-cursors
(require 'multiple-cursors-setup)

;; Set up Java development environment
(require 'java-setup)

;; Set up JavaScript development environment
(require 'js-setup)

;; Set up web development environment
(require 'web-setup)

;; Set up expand-region, semantic region expander
(require 'expand-region-setup)

;; Set up ace-jump-mode - jump to a word starting with a given char
(require 'ace-jump-setup)

;; Set up key-bindings
(require 'key-bindings-setup)
