;; zsh
(add-to-list 'auto-mode-alist '("\\.zsh\\'" . sh-mode))

;; gb
(defun gb/setup-gb-gopath ()
  (interactive)
  (make-local-variable 'process-environment)
  (let ((srcPath (gb/gb-project-root)))
	(when srcPath
	  (let* ((projectPath (string-remove-suffix "/" (file-name-directory srcPath)))
			 (vendorPath (string-remove-suffix "/" (concat projectPath "/vendor")))
			 (gopath (concat vendorPath ":" projectPath)))
		(message "Updating GOPATH to %s" gopath)
		(setenv "GOPATH" gopath)))))

(add-hook 'go-mode-hook 'gb/setup-gb-gopath)
