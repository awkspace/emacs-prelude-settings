;;; 00_global.el --- Global personal configuration

;;; Commentary:

;; For global Emacs settings common to all major modes.

;;; Code:

(setq prelude-guru nil)

(require 'prelude-ruby)
(require 'prelude-evil)
(require 'prelude-scss)

(add-hook 'after-init-hook 'global-company-mode)

;;; 00_global.el ends here
