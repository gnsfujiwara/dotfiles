#!/usr/bin/env sh

#
# ~/.xinitrc
#

# Load user resources
userresources="$HOME/.Xresources"

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

unset userresources

# Source some important modules
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
        [ -x "$f" ] && . "$f"
    done
    unset
fi

# Setup keyboard
setxkbmap -layout br -model pc104 -option ctrl:nocaps,shift:both_capslock

# Setup screensaver
xset s off -dpms

# Start urxvt daemon
urxvtd -q -f -o

# Start compositor
picom &

# Start window manager
exec i3
