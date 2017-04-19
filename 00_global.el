;;; 00_global.el --- Global personal configuration

;;; Commentary:

;; For global Emacs settings common to all major modes.

;;; Code:

;;; Requires
(require 'prelude-evil)
(require 'prelude-scss)
(require 'typopunct)
(require 'robe)

;;; Disable auto-save on lost focus.
(setq prelude-auto-save nil)

;;; Enable global line number display.
(global-linum-mode t)

(when (eq system-type 'darwin)

  ;;; Increase font size on MacOS.
  (set-face-attribute 'default nil :height 125)

  ;;; Disable scrollbar on MacOS.
  (scroll-bar-mode -1))

;;; Set default font on non-MacOS systems.
(unless (eq system-type 'darwin)
  (set-frame-font "Terminus 10"))

;;; Disable guru mode as it works at odds with evil-mode.
(setq prelude-guru nil)

;;; Enable global company (completion) mode.
(add-hook 'after-init-hook 'global-company-mode)

;;; Exit evil insert state when buffer is saved.
(add-hook 'after-save-hook 'evil-normal-state)

;;; Wrap text at 80 columns in all modes by default.
(setq-default fill-column 80)

;;; Keyboard shortcuts
(global-set-key (kbd "C-x C-a") 'helm-ag-project-root)

;;; 00_global.el ends here
