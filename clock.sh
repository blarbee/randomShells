#!/bin/bash

# Set the initial time to 00:00:00
current_time="00:00:00"

# Calculate the total number of seconds in 48 hours
total_seconds=$((48 * 60 * 60))

# Function to increment the time
increment_time() {
    current_seconds=$(date -d "$current_time" +%s)
    new_seconds=$((current_seconds + 1))
    current_time=$(date -u -d @"$new_seconds" +%H:%M:%S)
}

# Run the clock for 48 hours
for ((i=0; i<$total_seconds; i++)); do
    # Print the current time
    printf "\r%s" "$current_time"

    # Wait for one second
    sleep 1

    # Increment the time by one second
    increment_time
done

# Print a new line at the end
echo

