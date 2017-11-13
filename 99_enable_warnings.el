(prelude-eval-after-init (
  run-at-time 5 nil (lambda () (
  ignore-errors (setq warning-minimum-level :warning)))))
