;;; 10_markdown.el --- Markdown configuration

;;; Commentary:

;; Settings for Markdown mode.

;;; Code:

(defun markdown-mode-config ()
  (set-fill-column 80)
  (turn-on-auto-fill)
  (typopunct-change-language 'english t)
  (typopunct-mode 1)
  (setq-local comment-use-syntax nil)

  ;; TODO: Match HTML comments too for backwards compatibility.

  (defun markdown-syntax-propertize-comments (start end)
  "Match liquid comments from the START to END."
  (let* ((in-comment (markdown-in-comment-p)))
    (goto-char start)
    (cond
     ;; Comment start
     ((and (not in-comment)
           (re-search-forward "{%\\(?:\s*\\|\n\\)comment\\(?:\s*\\|\n\\)%}" end t)
           (not (markdown-inline-code-at-point-p))
           (not (markdown-code-block-at-point-p)))
      (let ((open-beg (match-beginning 0)))
        (put-text-property open-beg (1+ open-beg)
                           'syntax-table (string-to-syntax "<"))
        (markdown-syntax-propertize-comments
         (min (1+ (match-end 0)) end (point-max)) end)))
     ;; Comment end
     ((and in-comment
           (re-search-forward "{%\\(?:\s*\\|\n\\)endcomment\\(?:\s*\\|\n\\)%}" end t))
      (put-text-property (1- (match-end 0)) (match-end 0)
                         'syntax-table (string-to-syntax ">"))
      (markdown-syntax-propertize-comments
       (min (1+ (match-end 0)) end (point-max)) end))
     ;; Nothing found
     (t nil))))

)

(add-hook 'markdown-mode-hook 'markdown-mode-config)
(add-hook 'gfm-mode-hook 'markdown-mode-config)

;;; 10_markdown.el ends here
