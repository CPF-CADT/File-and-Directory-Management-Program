#!/bin/bash
listItemInDetail(){
    filePath=$(realpath "$1")
    if [ -z "$filePath" ];then 
        ls -l "."
        return 1
    fi
    checkFileValidation "$filePath"
    if [ -d "$filePath" ]; then 
        ls -l "$filePath"
        trackAction "list information in directory $filePath"
    elif [ -f "$filePath" ]; then 
        echo "$filePath is a file:"
        ls -l "$filePath"
        trackAction "list information of file $filePath"
    fi
}