#!/bin/bash
checkFileValidation(){
    filePath=$1
    if [ ! -e "$filePath" ]; then
        echo "File or Directory does not exist."
        exit 1
    fi
    if [ ! -x "$filePath" ]; then  
        echo "You don't have permission to access this file or directory."
        exit 1
    fi
    if [ ! -d "$filePath" ] || [ ! -f "$filePath" ];then    
        echo "$filePath is not a file or direcotry"
    fi
}