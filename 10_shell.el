(add-hook 'eshell-mode-hook (lambda () (linum-mode -1)))
(add-hook 'term-mode-hook (lambda () (linum-mode -1)))

(evil-set-initial-state 'eshell-mode 'emacs)
(evil-set-initial-state 'term-mode 'emacs)
