(prelude-eval-after-init (
  run-at-time 5 nil (lambda () (
  ignore-errors (delete-windows-on "*Compile-Log*")))))
