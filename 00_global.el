;;; 00_global.el --- Global personal configuration

;;; Commentary:

;; For global Emacs settings common to all major modes.

;;; Code:

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

;;; 00_global.el ends here
