#
# zshrc
# Author: gnsfujiwara <gnsfujiwara@disroot.org>
#

# Sheldon setup
eval "$(sheldon source)"

# Starship setup
eval "$(starship init zsh)"

# Disable ctrl-S/ctrl-Q for START/STOP
stty -ixon -ixoff

# Vi mode
bindkey -v
export KEYTIMEOUT=10

# Surround setup
autoload -Uz surround
zle -N delete-surround surround
zle -N add-surround surround
zle -N change-surround surround
bindkey -a cs change-surround
bindkey -a ds delete-surround
bindkey -a ys add-surround
bindkey -M visual S add-surround

# Select-quoted setup
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
    for c in {a,i}{\',\",\`}; do
        bindkey -M $m $c select-quoted
    done
done

# Select-bracketed setup
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
    for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
        bindkey -M $m $c select-bracketed
    done
done

# Tab/Auto completion
zstyle ':completion:*' menu select
autoload -U compinit
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Fuzzy match completion
zstyle ':completion:*' matcher-list '' \
    'm:{a-z\-}={A-Z\_}' \
    'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
    'r:|?=** m:{a-z\-}={A-Z\_}'

# Don't show . and .. in completion menu
zstyle ':completion:*' special-dirs false

# Persistent rehash
zstyle ':completion:*' rehash true

# Use completion cache
zstyle ':completion:*' use-cache true

# Completing Groping
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:descriptions' format '%F{blue}%B%d%b%f'
zstyle ':completion:*' group-name ''

# Use Vi motion keys in completion menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect '^[[Z' reverse-menu-complete
bindkey -v '^?' backward-delete-char

# Set terminal title dinamically
case "$TERM" in (rxvt|rxvt-*|st|st-*|*xterm*|(dt|k|E)term)
    local term_title() { print -n "\e]0;${(j: :q)@}\a" }
    precmd() {
        local DIR="$(pwd | sed -e "s;^$HOME;~;")"
        term_title "$USER@$HOST:$DIR"
    }
    preexec() {
        local CMD="${(j:\n:)${(f)1}}"
        term_title "$USER@$HOST:$CMD"
    }
    ;;
esac

# History
export HISTSIZE=1000
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups hist_ignore_space

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
