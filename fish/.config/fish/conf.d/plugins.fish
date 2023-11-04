#
# fish plugins
# Author: gnsfujiwara <gnsfujiwara@disroot.org>
#

# Fundle bootstrap
if not functions -q fundle
    eval (curl -sfL https://git.io/fundle-install)
end

# Plugins
fundle plugin 'jorgebucaran/autopair.fish'
fundle plugin nickeb96/puffer-fish
fundle plugin franciscolourenco/done
fundle plugin tuvistavie/fish-completion-helpers
# fundle plugin 'pure-fish/pure'
fundle plugin laughedelic/fish_logo
fundle plugin edc/bass

# Load plugins
if status is-interactive
    fundle init
end
