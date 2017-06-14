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

;;; Mac specific
(when (eq system-type 'darwin)

  ;;; Increase font size on MacOS.
  (set-face-attribute 'default nil :height 125)

  ;;; Disable scrollbar on MacOS.
  (scroll-bar-mode -1))

;;; Set default font on Linux only.
(if (eq system-type 'gnu/linux)
  (set-frame-font "Terminus 10"))

;;; Disable guru mode as it works at odds with evil-mode.
(setq prelude-guru nil)

;;; Enable global company (completion) mode.
(add-hook 'after-init-hook 'global-company-mode)

;;; Exit evil insert state when buffer is saved.
(add-hook 'after-save-hook 'evil-normal-state)

;;; Wrap text at 80 columns in all modes by default.
(setq-default fill-column 80)

;;; Toggle horizontal/vertical split with C-x |
(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))

;;; Keyboard shortcuts
(global-set-key (kbd "C-x |") 'toggle-window-split)
(global-set-key (kbd "C-x C-a") 'helm-ag-project-root)

;;; Scroll one line at a time
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;;; 00_global.el ends here
