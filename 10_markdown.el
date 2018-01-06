;;; 10_markdown.el --- Markdown configuration

;;; Commentary:

;; Settings for Markdown mode.

;;; Code:

(use-package markdown-mode)

(defun markdown-mode-config ()
  (set-fill-column 80)
  (turn-on-auto-fill)
  (typopunct-change-language 'english t)
  (typopunct-mode 1)
  (setq-local comment-use-syntax nil)

  ;; TODO: Match HTML comments too for backwards compatibility.

  (defconst markdown-regex-comment-start
    "{%\\(?:\s*\\|\n\\)comment\\(?:\s*\\|\n\\)%}"
    "Regular expression matches Liquid comment opening.")

  (defconst markdown-regex-comment-end
    "{%\\(?:\s*\\|\n\\)endcomment\\(?:\s*\\|\n\\)%}"
    "Regular expression matches Liquid comment closing.")

)

(add-hook 'markdown-mode-hook 'markdown-mode-config)
(add-hook 'gfm-mode-hook 'markdown-mode-config)

;;; 10_markdown.el ends here
