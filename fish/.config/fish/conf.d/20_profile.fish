#
# fish profile
# Author: gnsfujiwara <gnsfujiwara@disroot.org>
#

if status is-login
    # Source global profile with replay.fish
    replay source /etc/profile

    # XDG Base Directory vars
    set -x XDG_CONFIG_HOME "$HOME/.config"
    set -x XDG_CACHE_HOME "$HOME/.cache"
    set -x XDG_DATA_HOME "$HOME/.local/share"
    set -x XDG_STATE_HOME "$HOME/.local/state"
    set -x XDG_USER_LOCAL "$HOME/.local"

    # Misc env vars
    set -x EDITOR nvim
    set -x PAGER less
    set -x LESS '--mouse -R -F -J -M'
    set -x TERMINAL st
    set -x GOPATH "$HOME/.go"
    set -x GOFLAGS "-buildmode=pie -trimpath -ldflags=-linkmode=external -mod=readonly -modcacherw"
    set -x PYENV_ROOT "$HOME/.pyenv"
    set -x QT_QPA_PLATFORMTHEME qt5ct
    set -x SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/gcr/ssh"

    # Additional paths
    fish_add_path --global --append "$HOME/.local/bin" "$GOPATH/bin" "$PYENV_ROOT/bin"

    # Auto start graphics server
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx 2>/dev/null
    end
end
