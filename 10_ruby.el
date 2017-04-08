;;; 10_ruby.el --- Ruby-specific configuration

;;; Commentary:

;; For Emacs settings related to Enhanced Ruby mode.

;;; Code:

(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook 'robe-mode)
(eval-after-load 'company
  '(push 'company-robe company-backends))

;;; 10_ruby.el ends here
