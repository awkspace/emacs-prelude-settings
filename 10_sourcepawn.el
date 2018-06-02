;;; 10_sourcepawn.el --- SourcePawn mode configuration

;;; Commentary:

;;; Emacs settings related to SourcePawn mode.

;;; Code:

(define-derived-mode sourcepawn-mode c-mode
  "SourcePawn"
  "SourcePawn editing mode."

  (font-lock-add-keywords nil '(("\\<\\([A-Za-z]+\\|_\\):" . font-lock-builtin-face)))
  )

(add-hook 'sourcepawn-mode-hook (lambda ()
  (setq indent-line-function 'indent-relative)))

(add-to-list 'auto-mode-alist '(".sp\\'" . sourcepawn-mode))
(add-to-list 'auto-mode-alist '(".inc\\'" . sourcepawn-mode))

;;; 10_sourcepawn.el ends here
