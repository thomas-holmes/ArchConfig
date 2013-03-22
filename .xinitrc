#!/bin/bash
xset +fp /usr/share/fonts/local
xset +fp $home/.fonts/
xset fp rehash

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xset -b

conky &
urxvtd -q -o -f &
pidgin &
wicd-client --tray &
/home/thomas/.dropbox-dist/dropboxd &
xcompmgr &

if [ -n "$DISPLAY" ]; then
        export BROWSER=chromium
        export EDITOR=vim
        export TERM=rxvt-unicode
fi

exec awesome
