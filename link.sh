#!/bin/sh

# editor
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
cp ~/.dotfiles/.spacemacs ~/.spacemacs
ln -sf ~/.dotfiles/.rawemacs ~/.rawemacs

# tmux
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf

# zsh
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.zsh ~/.zsh

# git
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.gitignore_global ~/.gitignore_global

# X Window System
ln -sf ~/.dotfiles/.Xdefaults ~/.Xdefaults
ln -sf ~/.dotfiles/.xinitrc ~/.xinitrc
