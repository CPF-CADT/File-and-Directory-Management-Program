#!/bin/bash
source ./validation.sh
echo -n "Path of file or directory: "
read filePath
if [ -z "$filePath" ];then 
    ls -l "."
    exit 1
fi
checkFileValidation filePath
if [ -d "$filePath" ]; then 
    ls -l "$filePath"
elif [ -f "$filePath" ]; then 
    echo "$filePath is a file:"
    ls -l "$filePath"
fi