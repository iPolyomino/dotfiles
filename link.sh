#!/bin/sh

# config directory
if [ ! -d $HOME/.config ]; then
    mkdir ~/.config
fi

# editor
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.config/nvim ~/.config/nvim
cp ~/.dotfiles/.spacemacs ~/.spacemacs
ln -sf ~/.dotfiles/.rawemacs ~/.rawemacs

# makefile
ln -sf ~/.dotfiles/.Makefile ~/.Makefile

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

# i3
ln -sf ~/.dotfiles/.config/i3 ~/.config/i3

# alacritty
ln -sf ~/.dotfiles/.config/alacritty ~/.config/alacritty

# emoji
ln -sf ~/.dotfiles/.config/fontconfig ~/.config/fontconfig
