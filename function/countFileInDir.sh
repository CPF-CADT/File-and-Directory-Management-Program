#!/bin/bash
countFile(){
    if [ -d $1 ];then 
        cd $1
        file_count=$(ls -l | grep "^-" | wc -l)
        echo "$file_count"
        trackAction "$file_count file(s) in directory $1"
    else 
        echo "$1 is not a directory"
    fi
    
}
