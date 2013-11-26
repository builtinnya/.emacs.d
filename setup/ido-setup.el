;;; Set up IDO (Interactively DO things) mode

(require 'ido)

;; Enable fuzzy search
(setq ido-enable-flex-matching t)

;; Use Ido for all buffer/file reading
(setq ido-everywhere t)

;; Save the ido state in `savefiles-dir'
(setq ido-save-directory-list-file
      (expand-file-name "ido.hist" savefiles-dir))

;; Guess whether text at point is a filename.
;; If found, use that as the starting point for filename selection.
(setq ido-use-filename-at-point 'guess)

;; Enable ido-mode
(ido-mode +1)

(provide 'ido-setup)
