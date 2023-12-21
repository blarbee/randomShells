#!/bin/bash

# Function to perform cleanup before exiting
cleanup() {
    echo -e "\nExiting the 48-hour clock script."
    exit
}

# Trap the SIGINT signal (Ctrl + C) and call the cleanup function
trap cleanup SIGINT

while true; do
    current_time=$(date +"%d:%H:%M:%S")
  

    day=$(date +"%d")
    hours=$(date +"%H")
    minutes=$(date +"%M")
    seconds=$(date +"%S")

    if [ $((day % 2)) -eq 0 ]; then
        hours=$((hours + 24))   
        echo -ne "\r48-Hour Clock: $hours:$minutes:$seconds"
    else
        echo -ne "\r48-Hour Clock: $hours:$minutes:$seconds"
    fi

    echo -ne "\r48-Hour Clock: $hours:$minutes:$seconds"

    sleep 1
done
