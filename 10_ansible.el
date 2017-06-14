(add-hook 'yaml-mode-hook '(lambda () (ansible 1)))
(add-hook 'ansible-hook 'ansible::auto-decrypt-encrypt)
