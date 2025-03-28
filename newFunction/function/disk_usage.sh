#!/bin/bash

display_disk_usage() {
    clear
    echo "Checking Disk Usage..."

    # Directly use the full path of 'df'
    if ! /usr/bin/df &> /dev/null; then
        echo "Error: 'df' command is not available on this system."
        return 1
    fi

    # Execute df command and validate output
    local disk_usage
    disk_usage=$(/usr/bin/df -h 2>/dev/null)

    echo -n 

    if [[ -z "$disk_usage" ]]; then
        echo "Error: Unable to retrieve disk usage information."
        return 1
    fi

    echo "$disk_usage"
    return 0
}