;;; 00_global.el --- Global personal configuration

;;; Commentary:

;; For global Emacs settings common to all major modes.

;;; Code:

;;; Enable global line number display.
(global-linum-mode t)

;;; Set default GUI font.
(set-frame-font "Inconsolata 11")

;;; Disable guru mode as it works at odds with evil-mode.
(setq prelude-guru nil)

(require 'prelude-ruby)
(require 'prelude-evil)
(require 'prelude-scss)

;;; Enable global company (completion) mode.
(add-hook 'after-init-hook 'global-company-mode)

;;; Exit evil insert state when buffer is saved.
(add-hook 'after-save-hook 'evil-normal-state)

;;; Wrap text at 80 columns in all modes by default.
(setq-default fill-column 80)

;;; 00_global.el ends here
