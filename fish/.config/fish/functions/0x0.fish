function 0x0
    printf "%s\n%s\n" "$argv[1]" (curl -s -F file="@$argv[1]" http://0x0.st)
end
