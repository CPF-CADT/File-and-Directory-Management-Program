#!/bin/bash
backUpFile() {
    src="$1"
    des="$2"
    cp -p "$src" "$des"
    if [ $? -eq 0 ]; then
        echo "Backup successfully"
        echo
        echo "Backup of file '$src'"
        echo "created at '$des'"
        trackAction "create backup a file $src into $des"
    else
        echo "Error backing up file: $src"
    fi
}
backUpDir() {
    src="$1"
    des="$2"
    cp -r "$src" "$des"
    if [ $? -eq 0 ]; then
        echo "Backup successfully"
        echo
        echo "Backup of directory '$src'"
        echo "created at '$des'"
        trackAction "create backup a directory $src into $des"
    else
        echo "Error backing up directory: $src"
    fi
}
backup() {
    sourceItem=$(realpath "$1")
    desItem=$(realpath "$2")
    checkFileValidation "$sourceItem"
    if [ ! -e "$desItem" ]; then
        mkdir -p "$desItem"
    fi
    checkFileValidation "$desItem"
    if [ -d "$desItem" ]; then
        desItem="$desItem/$(basename "$sourceItem")"
    fi
    if [ -f "$sourceItem" ]; then
        backUpFile "$sourceItem" "$desItem"
    elif [ -d "$sourceItem" ]; then
        backUpDir "$sourceItem" "$desItem"
    else
        echo "Error: '$sourceItem' is neither a file nor a directory."
    fi
}

