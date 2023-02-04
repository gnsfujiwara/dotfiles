#
# zshenv
# Author: gnsfujiwara <gnsfujiwara@disroot.org>
#

# XDG Base Directory vars
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_USER_LOCAL="$HOME/.local"

# Misc env vars
export EDITOR="nvim"
export PAGER="less"

export RXVT_SOCKET="${XDG_RUNTIME_DIR:-${HOME/.urxvt}}/urxvtd-${HOST}"

export GOPATH="$HOME/go"

# Addtional paths
typeset -U PATH path
path=("$HOME/.local/bin" "$(go env GOPATH)/bin" "$path[@]")
export PATH
