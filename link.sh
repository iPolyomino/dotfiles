#!/bin/sh

# config directory
if [ ! -d $HOME/.config ]; then
    mkdir ~/.config
fi

# editor
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.config/nvim ~/.config
cp -i ~/.dotfiles/.spacemacs ~/.spacemacs
ln -sf ~/.dotfiles/.rawemacs ~/.rawemacs
ln -sf ~/.dotfiles/.emacs.el ~/.emacs.el

# makefile
ln -sf ~/.dotfiles/.Makefile ~/.Makefile

# tmux
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf

# zsh
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.zshenv ~/.zshenv
ln -sf ~/.dotfiles/.zsh ~

# git
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.config/git ~/.config

# uncrustify
ln -sf ~/.dotfiles/.uncrustify.cfg ~/.uncrustify.cfg

# X Window System
ln -sf ~/.dotfiles/.Xdefaults ~/.Xdefaults
ln -sf ~/.dotfiles/.xinitrc ~/.xinitrc

# i3
ln -sf ~/.dotfiles/.config/i3 ~/.config

# alacritty
ln -sf ~/.dotfiles/.config/alacritty ~/.config

# emoji
ln -sf ~/.dotfiles/.config/fontconfig ~/.config
