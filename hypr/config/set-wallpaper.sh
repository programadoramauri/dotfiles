#!/bin/bash
WALLPAPERS="$HOME/Pictures/wallpapers"
SELECTED=$(ls "$WALLPAPERS" | shuf -n 1)
swww img "$WALLPAPERS/$SELECTED" --transition-type wave --transition-duration 1.0
