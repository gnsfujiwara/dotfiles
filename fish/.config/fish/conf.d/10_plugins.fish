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
fundle plugin 'jorgebucaran/replay.fish'
fundle plugin nickeb96/puffer-fish
fundle plugin franciscolourenco/done
fundle plugin tuvistavie/fish-completion-helpers
fundle plugin laughedelic/fish_logo

# Load plugins
if status is-interactive
    fundle init
end
