#!/bin/bash
source "./validation.sh"
backUpFile() {
    src="$1"
    des="$2"
    cp -p "$src" "$des"
    if [ $? -eq 0 ]; then
        echo "Backup of file '$src' created at '$des'"
    else
        echo "Error backing up file: $src"
    fi
}
backUpDir() {
    src="$1"
    des="$2"
    cp -r "$src" "$des"
    if [ $? -eq 0 ]; then
        echo "Backup of directory '$src' created at '$des'"
    else
        echo "Error backing up directory: $src"
    fi
}
backup() {
    echo -n "Source Location: "
    read sourceItem
    checkFileValidation "$sourceItem"
    echo -n "Location to BackUp: "
    read desItem
    
    if [ ! -e "$desItem" ];then
        mkdir "$desItem"
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
backup
