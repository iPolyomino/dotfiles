;; -*- Emacs-Lisp -*-

(setq initial-buffer-choice t)

;; swap BS and DEL
(keyboard-translate ?\C-h ?\C-?)

;; X11 specific
(when (eq window-system 'x)
  (scroll-bar-mode -1)
  (set-default-font "Source Code Pro")
  (set-face-attribute 'default nil :height 200)
)

(put 'upcase-region 'disabled nil)

;; disable scratch message
(setq initial-scratch-message "")

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

;; force to use space
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; don't make backup file
(setq make-backup-flies nil)
(setq auto-save-default nil)
(setq delete-auto-save-files t)

;; display code
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; display line number
(global-linum-mode t)
(setq linum-format "%4d")

(global-hl-line-mode t)

(show-paren-mode 1)

(global-whitespace-mode 1)

(setq scroll-conservatively 1)

(fset 'yes-or-no-p 'y-or-n-p)

;; package setup

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
