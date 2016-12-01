;;; 10_markdown.el --- Markdown configuration

;;; Commentary:

;; Settings for Markdown mode.

;;; Code:

(defun markdown-mode-config ()
  (set-fill-column 80)
  (turn-on-auto-fill)
  (require 'typopunct)
  (typopunct-change-language 'english t)
  (typopunct-mode 1))

(add-hook 'markdown-mode-hook 'markdown-mode-config)
(add-hook 'gfm-mode-hook 'markdown-mode-config)

;;; 10_markdown.el ends here
