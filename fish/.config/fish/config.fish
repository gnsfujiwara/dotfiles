#
# fish config
# Author: gnsfujiwara <gnsfujiwara@disroot.org>
#

status is-interactive || exit

# Supress default login message
set -g fish_greeting

# Theme
fish_config theme choose "Base16 Default Dark"

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

# Start pyenv
pyenv init - | source
pyenv virtualenv-init - | source

# Direnv hook
direnv hook fish | source

# Start zoxide
zoxide init fish | source
