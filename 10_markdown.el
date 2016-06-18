;;; 10_markdown.el --- Markdown configuration

;;; Commentary:

;; Settings for Markdown mode.

;;; Code:

(defun markdown-mode-config ()
  (set-fill-column 80))

(add-hook 'markdown-mode-hook 'markdown-mode-config)
(add-hook 'gfm-mode-hook 'markdown-mode-config)

;;; 10_markdown.el ends here
