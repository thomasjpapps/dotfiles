#!/usr/bin/bash
# This script is designed to rename the active workspace to make it obvious
num=$1
focused=$(swaymsg -t get_workspaces | grep -o -P '.{0,2}' | cut -c 1)

swaymsg rename workspace $focused: to $focused:
swaymsg workspace $num:
swaymsg rename workspace $num: to $num:
