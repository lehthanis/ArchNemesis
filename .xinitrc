#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[ -f ~/.xprofile ] && source ~/.xprofile

xrdb ~/.Xresources
xrdb -merge ~/.colors.xres
xset +fp ~/.fonts
xset +fp /usr/share/fonts/local
xset fp rehash

sh ~/.fehbg

[ ! -s ~/.config/mpd/pid ] && mpd

conky | while read -r; do xsetroot -name "$REPLY"; done &

exec $1
