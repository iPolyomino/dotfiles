#!/bin/sh

export DefaultImModule=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx-autostart

xset +fp /usr/local/share/fonts
setxkbmap -option ctrl:nocaps
xset r rate 200 40

xcompmgr -c -l0 -t0 -r0 -o.00 > /dev/null 2>&1 &

exec i3

# xpywm 2>/tmp/xpywm.log &
# xpymon 2>/tmp/xpymon.log &
# xpylog 2>/tmp/xpylog.log &
# urxvt -e tmux
