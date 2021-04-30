#!/bin/sh

sudo apt update
sudo apt upgrade

sudo apt install zsh zsh-doc curl git tmux\
    vim emacs fuse\
    net-tools wireless-tools dnsutils\
    mutt alsa-utils brightnessctl\
    unar gv mirage mupdf evince feh imagemagick\
    jq moreutils devscripts rsync xsel xcompmgr

# neovim
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

# zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

zplug install
zplug load

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# urxvt-resize-font
mkdir -p ~/.urxvt/ext
cd $_
wget https://raw.githubusercontent.com/simmel/urxvt-resize-font/master/resize-font
cd ~
