#
# bashrc
# Author: gnsfujiwara <gnsfujiwara@disroot.org>
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd
shopt -s interactive_comments
shopt -s checkwinsize
shopt -s histappend

# Prompt
PROMPT_DIRTRIM=3
PS1="\e[36m\w\e(B\e[m \e[33m\$\e(B\e[m "

# History
export HISTFILE="$HOME/.bash_history"
export HISTSIZE=10000
export HISTFILESIZE="$HISTSIZE"
export HISTCONTROL='ignorespace:ignoredups:erasedups'
export HISTTIMEFORMAT='%F %T '

# Upload files to 0x0
function 0x0() {
    printf "$1\n$(curl -F file="@$1" https://0x0.st)\n"
}

# Wraps ls command with eza
function ls() {
    eza "$@"
}

function ll() {
    eza -lh "$@"
}

function la() {
    eza -lAh "$@"
}

function tree() {
    eza --tree "$@"
}

# Aliases
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -iv'
alias rm='rm -Iv'
alias mkdir='mkdir -pv'
alias rmdir='rmdir -v'
alias grep='grep --color=auto'
alias g='git'
alias n='nvim'
alias vim='nvim'
alias sxiv='nsxiv'
alias xload='xrdb -load ~/.Xresources'

# Start pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Direnv hook
eval "$(direnv hook bash)"

# Start zoxide
eval "$(zoxide init bash)"
