(setq go-post-extensions
      '(
        go-gb
        ))

(defun go/init-go-gb()

  ;; 运行命令
  (defun gb/run-gb (&optional command args)
    (let* ((where (gb/gb-project-root))
           (args (if args args ""))
           )

    (if (not command)
      (spacemacs-buffer/warning "abort: rub-gb command is required!"))

    (if (not where)
      (spacemacs-buffer/warning "abort: gb project not found!"))

    ;; 进入项目根目录执行命令
    (async-shell-command (concat "cd " where " && " (format "gb %s %s" command args)))))

  ;; 测试
  (defun gb/gb-run-tests ()
    (interactive)
    (gb/run-gb "test" "-v"))

  ;; 构建
  (defun gb/gb-build ()
    (interactive)
    (gb/run-gb "build"))

  ;; Vendor
  ;; Fetch
  ;; Update
  ;; Delete

  (spacemacs/declare-prefix-for-mode 'go-mode "mb" "gb")
  (spacemacs/set-leader-keys-for-major-mode 'go-mode
                                            "bt" 'gb/gb-run-tests
                                            "bb" 'gb/gb-build
                                            ;; "bf" 'gb/gb-vendor-fetch
                                            ;; "bu" 'gb/gb-vendor-update
                                            ;; "bd" 'gb/gb-vendor-delete
                                            )
  )
