#
# zprofile
# Author: gnsfujiwara <gnsfujiwara@disroot.org>
#

# Auto start graphics server
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec startx
fi
