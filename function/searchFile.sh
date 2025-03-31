searchFile() {
    directory=$(realpath "$1")
    search_term="$2"
    checkSpcialChar "$2"
    if [[ "$search_term" == .* ]]; then
        echo "Searching for files with extension '$search_term' in '$directory'..."
        listItemInDetail "$directory" | grep "$search_term"
    else
        echo "Searching for files with name containing '$search_term' in '$directory'..."
        listItemInDetail "$directory" | grep "$search_term"
    fi
}