#!/usr/bin/env sh

# i3lock simple script

IMG=$(mktemp -u --suffix=.png)

import -window root -silent "$IMG"
convert "$IMG" -blur 0x5 "$IMG"

if ! i3lock -i "$IMG"; then
    rm "$IMG"
    return 1
fi

rm "$IMG"
