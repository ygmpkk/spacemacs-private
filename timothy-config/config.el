;; -*- mode: emacs-lisp -*-

;; Emacs配置

;; 基本配置
;; 自动时全屏模式
;; dotspacemacs-fullscreen-at-startup nil
;; 启动时最大化
;; dotspacemacs-maximized-at-startup t

;; 字体

;; 文档

;; 错误检查

;; 增强

;; 快捷键

;; 显示行号
;; (global-linum-mode)
;; (setq column-number-mode t)

;; 高亮括号配对
;; (electric-pair-mode)

;; 高亮括号配对
;; (show-paren-mode t)
;; (setq show-paren-style ‘parenthesis)

;;   dotspacemacs-configuration-layers
;;   '(
;;     ;; ----------------------------------------------------------------
;;     ;; Example of useful layers you may want to use right away.
;;     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
;;     ;; <M-m f e R> (Emacs style) to install them.
;;     ;; ----------------------------------------------------------------
;;
;;     ;; 基本配置
;;     auto-completion
;;     git
;;     osx
;;     better-defaults
;;     (chinese :variables
;;              chinese-enable-youdao-dict t
;;              chinese-enable-fcitx t)
;;
;;     ;; 增强
;;     eyebrowse
;;     dockerfile
;;     vagrant
;;     github
;;     tmux
;;
;;     ;; 文档和帮助
;;     markdown
;;     org
;;     dash
;;     smex
;;     deft
;;     yaml
;;
;;     ;; 编程语言
;;     emacs-lisp
;;     go
;;     python
;;     elixir
;;     erlang
;;     javascript
;;     html
;;
;;     ;; 编程语言增强
;;     gb
;;
;;     (shell :variables
;;            shell-default-shell 'term
;;            shell-default-term-shell "/usr/local/bin/zsh"
;;            shell-default-height 20
;;            shell-default-position 'bottom)
;;
;;     ;; 语法检查
;;     spell-checking
;;     (syntax-checking :variables
;;                      syntax-checking-enable-by-default nil
;;                      syntax-checking-enable-tooltips nil)
;;     version-control
;;     )
