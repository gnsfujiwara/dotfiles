function cpr --wraps rsync --description "rsync with better defaults, mimics cp"
    rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 $argv
end
