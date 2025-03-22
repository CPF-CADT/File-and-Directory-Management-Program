#!/bin/bash
user= whoami
echo "$user"

source ./function/disk_usage.sh

option=0
while true  
do
    echo "File and Directory Management"
    echo "1 . List File or Directory"
    echo "2 . Create Backup"        
    echo "3 . Count the number of files in a Directory" #Jor
    echo "4 . Display disk usage"
    echo "5 . Search "
    echo "6 . Compress "
    echo -n "Choose : "
    read option

    case $option in
        0)
            clear
            echo "Exiting the program."
            break 
            ;;
        1)
            clear
            echo "List File or Directory"  
            ;;
        2)
            clear
            echo "Create Backup" 
            ;;
        3)
            clear
            echo "Count the number of files in a Directory" 
            ;;
        4)  

            display_disk_usage
            ;;
        5)
            clear
            echo "Search" 
            ;;
        6)
            clear
            echo "Compress" 
            ;;
        *)
            echo "Please Input Numebr from (1-7)"
    esac
done
