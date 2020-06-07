#!/bin/sh

sudo apt update
sudo apt upgrade

sudo apt install zsh zsh-doc curl git tmux
sudo apt install vim emacs

# link dotfiles
~/.dotfiles/link.sh

# neovim
sudo apt install fuse
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

sudo apt install alsa-utils net-tools wireless-tools dnsutils

sudo apt install mutt unar gv mirage mupdf evince

sudo apt install jq moreutils rsync xsel
