#!/bin/bash
source "$(dirname "$0")/function/validation.sh"
source "$(dirname "$0")/function/listFileorDir.sh"
source "$(dirname "$0")/function/backup.sh"
source "$(dirname "$0")/function/countFileInDir.sh"
source "$(dirname "$0")/function/compressFileorDir.sh"
source "$(dirname "$0")/function/disk_usage.sh"

user= whoami
echo "$user"

source ./function/disk_usage.sh

trackAction "Login into program"  
option=0
userFeatureOption=('List File or Directory' 'Create Backup' 'Count the number of files in a Directory' 'Display disk usage' 'Search' 'Compress' )
while true
do
    clear
    echo "File and Directory Management"
    echo "1 . ${userFeatureOption[0]}"
    echo "2 . ${userFeatureOption[1]}"        
    echo "3 . ${userFeatureOption[2]}" #Jor
    echo "4 . ${userFeatureOption[3]}"
    echo "5 . ${userFeatureOption[4]}"
    echo "6 . ${userFeatureOption[5]}"
    echo -n "Choose : "
    read option

    case $option in
        0)
            clear
            echo "Exiting the program."
            trackAction "Exiting program"  
            break 
            ;;
        1)
            clear
            trackAction "Navigate to ${userFeatureOption[0]}"  
            echo "${userFeatureOption[0]}"  
            echo -n "Path of file or directory: "
            read filePath
            listItemInDetail "$filePath"
            stopProcess
            ;;
        2)
            clear
            trackAction "Navigate to ${userFeatureOption[1]}"  
            echo "${userFeatureOption[1]}" 
            echo -n "Source Location: "
            read sourceItem
            
            echo -n "Location to BackUp: "
            read desItem
            backup "$sourceItem" "$desItem"
            stopProcess
            ;;           
        3)
            clear
            trackAction "Navigate to ${userFeatureOption[2]}"  
            echo "${userFeatureOption[2]}" 
            echo -n "Input Location of Directory : " 
            read des
            countFile "$des"
            stopProcess
            ;;
        4)
            clear
            trackAction "Navigate to ${userFeatureOption[3]}"  
            echo "${userFeatureOption[3]}" 
            display_disk_usage
            stopProcess
            ;;
        5)
            clear
            trackAction "Navigate to ${userFeatureOption[4]}"  
            echo "${userFeatureOption[4]}" 
            stopProcess
            ;;
        6)
            clear
            trackAction "Navigate to ${userFeatureOption[5]}"  
            echo -n "Input compress content : "
            read compressContent
            echo "${userFeatureOption[5]}" 
            echo -n "Input compress file    : "
            read compressFile
            compress "$compressFile" "$compressContent"
            stopProcess
            ;;
        *)
            echo "Please Input Numebr from (1-7)"
    esac
done
