;;; 10_sourcepawn.el --- SourcePawn mode configuration

;;; Commentary:

;;; Emacs settings related to SourcePawn mode.

;;; Code:

(define-derived-mode sourcepawn-mode c-mode
  "SourcePawn"
  "SourcePawn editing mode."

  (font-lock-add-keywords nil '(("\\<\\([A-Za-z]+\\|_\\):" . font-lock-builtin-face)))
  (setq-local indent-line-function 'c-indent-line)
  (setq-local tab-width 2)
)

(add-to-list 'auto-mode-alist '(".sp\\'" . sourcepawn-mode))
(add-to-list 'auto-mode-alist '(".inc\\'" . sourcepawn-mode))

;;; 10_sourcepawn.el ends here
