#!/usr/bin/bash
# This script will get various data from the system

# Get necessapy information from command and set it to a variable
date=$(date | grep -o -P '.{0,13}:.{0,2}' | head -1)
battery=$(acpi | grep -o -P '.{0,2}%')
volume=$(pactl list sinks | grep -o -P '.{0,3}%' | head -1)
light=$(light)

# Add prefix and suffix
date="$date"
battery="Battery: $battery"
volume="Volume: $volume"
light="Brightness: $light"

# Finally print all the information
echo "$volume  | $light |  $battery  |  $date"
