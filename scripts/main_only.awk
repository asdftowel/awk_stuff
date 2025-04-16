{
    # Filter out everything but main from objdump output.
    while ($2 != "<main>:")
        next
    do {
        print $0
        getline
    } while ($1 ~ /[[:xdigit:]]{2,9}:/)
    exit
}