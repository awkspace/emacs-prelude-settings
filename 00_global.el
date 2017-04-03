;;; 00_global.el --- Global personal configuration

;;; Commentary:

;; For global Emacs settings common to all major modes.

;;; Code:

;;; Requires
(require 'prelude-ruby)
(require 'prelude-evil)
(require 'prelude-scss)
(require 'typopunct)

;;; Disable auto-save on lost focus.
(setq prelude-auto-save nil)

;;; Enable global line number display.
(global-linum-mode t)

;;; Set default GUI font.
(set-frame-font "Terminus 10")

;;; Increase font size on MacOS.
(if (eq system-type 'darwin)
  (set-face-attribute 'default nil :height 150)
)

;;; Disable guru mode as it works at odds with evil-mode.
(setq prelude-guru nil)

;;; Enable global company (completion) mode.
(add-hook 'after-init-hook 'global-company-mode)

;;; Exit evil insert state when buffer is saved.
(add-hook 'after-save-hook 'evil-normal-state)

;;; Wrap text at 80 columns in all modes by default.
(setq-default fill-column 80)

;;; 00_global.el ends here
