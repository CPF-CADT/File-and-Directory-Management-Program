#!/bin/bash

echo -n "Path of file or directory: "
read filePath

if [ -z "$filePath" ]; then  
    filePath="."
fi

if [ ! -e "$filePath" ]; then
    echo "File or Directory does not exist."
    exit 1
fi

if [ ! -x "$filePath" ]; then  
    echo "You don't have permission to access this file or directory."
    exit 1
fi

if [ -d "$filePath" ]; then 
    ls -l "$filePath"
elif [ -f "$filePath" ]; then 
    echo "$filePath is a file:"
    ls -l "$filePath"
else 
    echo "$filePath is not a valid file or directory."
fi