#
# fish config
# Author: gnsfujiwara <gnsfujiwara@disroot.org>
#

status is-interactive || exit

# Supress default login message
set -g fish_greeting

# Prompt
# function fish_mode_prompt
# end

# function fish_prompt
#     set -l last_status $status
#     set -g __fish_git_prompt_showcolorhints true
#     set -g __fish_git_prompt_color_branch magenta
#     set -g __fish_git_prompt_showdirtystate true
#     set -g __fish_git_prompt_showstashstate true
#     set -g __fish_git_prompt_showuntrackedfiles true
#     set -g __fish_git_prompt_char_cleanstate ''
#     set -g __fish_git_prompt_char_dirtystate '!'
#     set -g __fish_git_prompt_char_stagedstate '+'
#     set -g __fish_git_prompt_char_untrackedfiles '?'
#     set_color $fish_color_cwd
#     printf (prompt_pwd --full-length-dirs=2 --dir-length=1)
#     set_color normal
#     fish_git_prompt
#     test $last_status -ne 0 && set_color red
#     printf " λ "
#     set_color normal
# end

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

# Direnv hook
direnv hook fish | source

# Start zoxide
zoxide init fish | source
