#
# bash_profile
# Author: gnsfujiwara <gnsfujiwara@disroot.org>
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Additional paths
export PATH="$PATH:$HOME/.local/bin"

# XDG Base Directory vars
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_USER_LOCAL="$HOME/.local"

# Misc env vars
export EDITOR='nvim'
export PAGER='less'

export QT_QPA_PLATFORMTHEME='qt5ct'

# Auto start graphics server
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec startx
fi
