#!/usr/bin/bash
# This script will get various data from the system

# Get necessapy information from command and set it to a variable
date=$(date | grep -o -P '.{0,13}:.{0,2}' | head -1)
battery=$(acpi | grep -o -P '.{0,3}%' | head -1)
volume=$(pactl list sinks | grep -o -P '.{0,3}%' | head -1)
light=$(printf "%.0f\n" $(light))
network=$(iwctl station wlan0 show | grep 'network' | cut -c 33- | gawk '{$1=$1};1') 

# Add prefix and suffix
date="  $date"
battery=" $battery"
volume="墳$volume"
light="  $light%"
network="  $network"

# Finally print all the information
echo "$network  $volume  $light  $battery  $date"
