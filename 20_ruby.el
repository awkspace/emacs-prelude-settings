;;; 20_ruby.el --- Ruby-specific configuration

;;; Commentary:

;; For Emacs settings related to Enhanced Ruby mode.

;;; Code:

(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

;;; 20_ruby.el ends here
