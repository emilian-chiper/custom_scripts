#!/bin/bash
WALLPAPER_DIR=~/Pictures/wallpapers/
INTERVAL=300
LOGFILE=~/wallpaper_log.txt

# Create an array of wallpapers
WALLPAPERS=($(find "$WALLPAPER_DIR" -type f))

# Infinite loop to cycle through wallpapers
while true; do
  for WALLPAPER in "${WALLPAPERS[@]}"; do
    feh --bg-scale "$WALLPAPER" 2>> "$LOGFILE"
    echo "Set wallpaper: $WALLPAPER" >> "$LOGFILE"
    sleep $INTERVAL
  done
done

