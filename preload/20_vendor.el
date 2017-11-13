;;; Load vendor directory
(defvar personal-vendor-dir (expand-file-name "vendor" prelude-personal-dir)
  "Transportable directory for third-party scripts.")

(add-to-list 'load-path personal-vendor-dir)
(prelude-add-subfolders-to-load-path personal-vendor-dir)
