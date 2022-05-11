;; -*- Emacs-Lisp -*-

;; swap BS and DEL
(keyboard-translate ?\C-h ?\C-?)

;; display settings
(menu-bar-mode -1)
(show-paren-mode t)
(global-hl-line-mode t)
(global-display-line-numbers-mode)

;; editing settings
(setq scroll-conservatively 1)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(fset 'yes-or-no-p 'y-or-n-p)

;; Japanese settings
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;; don't show startup message
(setq inhibit-startup-message t)

;; disable scratch message
(setq initial-scratch-message "")

;; force to use space
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; don't make backup file
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq delete-auto-save-files t)

;; display code
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; completion
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; X11 specific
(when (eq window-system 'x)
  (set-default-font "Source Code Pro")
  (set-face-attribute 'default nil :height 200)
)

;; package setup
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
