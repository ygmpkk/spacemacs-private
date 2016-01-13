(setq go-post-extensions
      '(
        ;; post extension gos go here
        go-gb
        ))

(defun go/init-go-gb()
  (defun gb//safe-project-root ()
    "Return project's root, or nil if not in a project."
    (and (fboundp 'projectile-project-root)
         (projectile-project-p)
         (projectile-project-root)))

  (defun spacemacs/gb-run-tests (args)
    ;; 到项目目录下执行gb命令
    (interactive (list (file-name-as-directory
                         (gb//safe-project-root))))
    (save-selected-window
      (async-shell-command (concat "cd " args "&& gb test -v"))))

  (defun spacemacs/gb-build (args)
    (interactive (list (file-name-as-directory
                         (gb//safe-project-root))))
    (save-selected-window
      (async-shell-command (concat "cd " args "&& gb build"))))

  (spacemacs/declare-prefix-for-mode 'go-mode "md" "gb")
  (spacemacs/set-leader-keys-for-major-mode 'go-mode
                                            "dt" 'spacemacs/gb-run-tests
                                            "db" 'spacemacs/gb-build
                                            )
  )



