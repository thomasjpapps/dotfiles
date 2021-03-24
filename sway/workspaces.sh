#!/usr/bin/bash
# This script is designed to rename the active workspace to make it obvious
num=$1
focused=$(swaymsg -t get_workspaces | jq -r 'map(select(.focused))[0].name' | cut -c 1)

swaymsg rename workspace $focused: to $focused:
swaymsg workspace $num:
focused=$(swaymsg -t get_workspaces | jq -r 'map(select(.focused))[0].name' | cut -c 1)
swaymsg rename workspace $focused: to $focused:
