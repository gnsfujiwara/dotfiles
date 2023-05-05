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

# Functions
function 0x0() {
    printf "$1\n$(curl -s -F file="@$1" http://0x0.st)\n"
}

# Aliases
alias ls='ls --group-directories-first --color=auto -F'
alias ll='ls -lh --group-directories-first --color=auto -F'
alias la='ls -lha --group-directories-first --color=auto -F'
alias grep='grep -i --color=auto'
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -iv'
alias rm='rm -Iv --preserve-root'
alias mkdir='mkdir -pv'
alias rmdir='rmdir -v'
alias g='git'
alias xload='xrdb -load ~/.Xresources'
