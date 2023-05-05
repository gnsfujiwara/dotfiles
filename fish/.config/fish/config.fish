#
# fish config
# Author: gnsfujiwara <gnsfujiwara@disroot.org>
#

set fish_greeting ""

if not functions -q fundle
    eval (curl -sfL https://git.io/fundle-install)
end

fundle plugin 'jorgebucaran/autopair.fish'
fundle plugin 'nickeb96/puffer-fish'
fundle plugin 'franciscolourenco/done'

if status is-login
    # XDG Base Directory vars
    set -x XDG_CONFIG_HOME "$HOME/.config"
    set -x XDG_CACHE_HOME "$HOME/.cache"
    set -x XDG_DATA_HOME "$HOME/.local/share"
    set -x XDG_STATE_HOME "$HOME/.local/state"
    set -x XDG_USER_LOCAL "$HOME/.local"

    # Misc env vars
    set -x EDITOR nvim
    set -x PAGER less
    set -x GOPATH "$HOME/.go"

    set -x QT_QPA_PLATFORMTHEME qt5ct

    # Additional paths
    set -gx PATH $PATH "$HOME/.local/bin" "$GOPATH/bin"

    # Auto start graphics server
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx 2>/dev/null
    end
end

if status is-interactive
    # Load plugins
    fundle init

    # Prompt
    function fish_mode_prompt
    end

    function fish_prompt
        set -l last_status $status
        set -x __fish_git_prompt_showcolorhints true
        set -x __fish_git_prompt_color_branch magenta
        set_color $fish_color_cwd
        printf (prompt_pwd --dir-length=0)
        set_color normal
        fish_git_prompt
        test $last_status -ne 0 && set_color --bold red
        printf " λ "
        set_color normal
    end

    # Vi-mode
    set fish_key_bindings fish_vi_key_bindings
    set fish_cursor_default block
    set fish_cursor_insert line
    set fish_cursor_replace underscore
    set fish_cursor_replace_one underscore
    set fish_cursor_visual block

    # Abbreviations
    abbr g git
    abbr n nvim
    abbr s sudo
    abbr yyy "yes |"
end

alias mv 'mv -iv'
alias cp 'cp -iv'
alias ln 'ln -iv'
alias rm 'rm -Iv --preserve-root'
alias mkdir 'mkdir -pv'
alias rmdir 'rmdir -v'
alias xload 'xrdb -load ~/.Xresources'
