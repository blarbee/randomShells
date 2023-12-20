#!/bin/bash

# Function to perform cleanup before exiting
cleanup() {
    echo -e "\nExiting the 48-hour clock script."
    exit
}

# Trap the SIGINT signal (Ctrl + C) and call the cleanup function
trap cleanup SIGINT


while true; do


    current_time=$(date +"%H:%M:%S")
    echo $current_time

    day=$(date + "%d")
    hours=$(date +"%H")
    minutes=$(date +"%M")
    seconds=$(date +"%S")

    if (day%2==0) then; do
        hours += 24


    fi

    total_minutes=$((hours * 60 + minutes))
    total_minutes_48=$((total_minutes * 48 / 24))


    hours_48=$((total_minutes_48 / 60))
    minutes_48=$((total_minutes_48 % 60))

    echo -ne "\r48-Hour Clock: $hours_48:$minutes_48:$seconds"

    sleep 1
done

