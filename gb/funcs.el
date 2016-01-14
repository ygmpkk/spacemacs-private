(defun gb/gopath ()
  (getenv "GOPATH"))

(defun gb/gb-project-root()
  (and (fboundp 'projectile-project-root)
       (projectile-project-p)
       (projectile-project-root)))

