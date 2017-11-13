;;; 10_sourcepawn.el --- SourcePawn mode configuration

;;; Commentary:

;;; Emacs settings related to SourcePawn mode.

;;; Code:

(add-hook 'sourcepawn-mode-hook (lambda ()
  (setq indent-line-function 'indent-relative)
  (setq whitespace-style (delete 'lines-tail whitespace-style))
  (whitespace-mode)))

(add-to-list 'auto-mode-alist '(".sp\\'" . sourcepawn-mode))
(add-to-list 'auto-mode-alist '(".inc\\'" . sourcepawn-mode))

;;; 10_sourcepawn.el ends here
