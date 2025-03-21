#!/bin/bash
compress(){
    checkSpcialChar $1
    fileCompress="$1"
    content="$2"
    checkFileValidation "$content"
    if [ -f "$content" ];then
        zip "$fileCompress" "$content"
    elif [ -d "$content" ];then
        zip -r "$fileCompress" "$content"
    fi
    echo "Compression successful: $fileCompress"
    trackAction "compress $content into $fileCompress"
}
