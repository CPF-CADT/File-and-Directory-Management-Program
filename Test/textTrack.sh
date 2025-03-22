#!/bin/bash
option=0
while true  
do
    clear 
    trackAction "Login into program"
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
            trackAction "Logout the program"
            echo "Exiting the program."
            break 
            ;;
        1)
            clear
            trackAction "List FIle "
            echo "List File or Directory"  
            echo -n "Path of file or directory: "
            stopProcess
            ;;
        2)
            clear
            echo "Create Backup" 
            echo -n "Source Location: "
            read sourceItem
            
            echo -n "Location to BackUp: "
            read desItem
            stopProcess
            ;;           
        3)
            clear
            echo "Count the number of files in a Directory" 
            echo -n "Enter Location of Directory : " 
            read des
            stopProcess
            ;;
        4)
            clear
            echo "Display disk usage" 
            stopProcess
            ;;
        5)
            clear
            echo "Search" 
            stopProcess
            ;;
        6)
            clear
            echo "Compress" 
            stopProcess
            ;;
        *)
            echo "Please Input Numebr from (1-7)"
    esac
done
