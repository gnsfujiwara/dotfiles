#
# fish aliases
# Author: gnsfujiwara <gnsfujiwara@disroot.org>
#

# Safer filesystem manipulation
alias mv 'mv -iv'
alias cp 'cp -iv'
alias ln 'ln -iv'
alias rm 'rm -Iv'
alias mkdir 'mkdir -pv'
alias rmdir 'rmdir -v'

# Cleaner ffmpeg output
alias ffmpeg 'ffmpeg -hide_banner'
alias ffprobe 'ffprobe -hide_banner'
alias ffplay 'ffplay -hide_banner'

# Colorized commands
alias ip 'ip --color'

# Misc
alias xload 'xrdb -load ~/.Xresources'
alias sxiv nsxiv
alias vim nvim
