function mvr --wraps rsync --description "rsync with better defaults, mimics mv"
    rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 --remove-source-files $argv
end
