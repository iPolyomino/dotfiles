#!/bin/sh

sudo apt update
sudo apt upgrade

sudo apt install zsh zsh-doc curl git tmux\
    vim emacs fuse\
    net-tools wireless-tools dnsutils\
    mutt alsa-utils brightnessctl\
    unar gv mirage mupdf evince feh imagemagick\
    jq moreutils devscripts rsync xsel

# neovim
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim
