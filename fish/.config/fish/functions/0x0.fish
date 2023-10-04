function 0x0 --description "Uploads file to 0x0.st"
    printf "%s\n%s\n" "$argv[1]" (curl -F file="@$argv[1]" https://0x0.st)
end
