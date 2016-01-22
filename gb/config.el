;; gb
(defun gb/setup-gb-gopath ()
  (interactive)
  (make-local-variable 'process-environment)
  (let ((srcPath (gb/gb-project-root)))
	(when srcPath
	  (let* ((projectPath (string-remove-suffix "/" (file-name-directory srcPath)))
			 (vendorPath (string-remove-suffix "/" (concat projectPath "/vendor")))
			 (gopath (concat (getenv "GOPATH") ":" vendorPath ":" projectPath)))
		(message "Updating GOPATH to %s" gopath)
		(setenv "GOPATH" gopath)))))

(add-hook 'go-mode-hook 'gb/setup-gb-gopath)

;; go
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook
        (lambda()
          (setq tab-width 4)))

;; Create Buffer 添加package
(add-hook 'after-generate-new-buffer-name 'gb/add-header)
