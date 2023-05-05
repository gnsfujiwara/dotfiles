#
# bash_profile
# Author: gnsfujiwara <gnsfujiwara@disroot.org>
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# XDG Base Directory vars
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_USER_LOCAL="$HOME/.local"

# Misc env vars
export EDITOR='nvim'
export PAGER='less'
export GOPATH="$HOME/.go"

export QT_QPA_PLATFORMTHEME='qt5ct'

# Additional paths
export PATH="$PATH:$HOME/.local/bin:$GOPATH/bin"

# Auto start graphics server
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec startx 2>/dev/null
fi
