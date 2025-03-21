#!/bin/bash
checkFileValidation() {
    filePath="$1"
    if [ ! -e "$filePath" ]; then
        echo "Error: File or directory '$filePath' does not exist."
        exit 1
    fi
    if [ ! -r "$filePath" ]; then  
        echo "Error: You don't have permission to read the file or directory '$filePath'."
        exit 1
    fi    
    if [ ! -d "$filePath" ] && [ ! -f "$filePath" ]; then    
        echo "Error: '$filePath' is neither a file nor a directory."
        exit 1
    fi
}