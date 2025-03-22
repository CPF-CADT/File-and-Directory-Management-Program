#!/bin/bash
checkFileValidation() {
    filePath=$(realpath "$1")
    if [ ! -e "$filePath" ]; then
        echo "Error: File or directory '$filePath' does not exist."
        return 1
    fi
    if [ ! -r "$filePath" ]; then  
        echo "Error: You don't have permission to read the file or directory '$filePath'."
        return 1
    fi 
    if [ ! -x "$filePath" ]; then  
        echo "Error: You don't have permission to execute the file or directory '$filePath'."
        return 1
    fi   
    if [ ! -d "$filePath" ] && [ ! -f "$filePath" ]; then    
        echo "Error: '$filePath' is neither a file nor a directory."
        return 1
    fi
}
stopProcess(){
    echo " Press any key to continue!!";
    read stop
}
trackAction() {
    typeAction=$1
    user=${USER}  
    date_string=$(printf '%(%Y-%m-%d %H:%M:%S)T\n' -1) 
    echo "$date_string $user $typeAction" >> script.log
}
checkSpcialChar(){
    file=$1
    if echo "$file" | grep -qE '[<>:"/\\|?*]'; then
        echo "Error: '$file' contaian special character."
        return 1  
    fi
}