#!/bin/sh

#
# ~/.xinitrc
#

# Load user resources
[ -f "$HOME/.Xresources" ] && xrdb -merge "$HOME/.Xresources"

# Source some important modules
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# Setup keyboard
setxkbmap -layout br -model pc104 -option ctrl:nocaps,shift:both_capslock

# Setup DPMS and screen saver
xset s off -dpms

# Setup repeat rate
xset r rate 300 50

# Start urxvt daemon
# urxvtd -q -o -f

# Start tym daemon
tym --daemon >/dev/null 2>&1 &

# Start xsettingsd
xsettingsd &

# Start compositor
picom &

# Start window manager
exec i3
