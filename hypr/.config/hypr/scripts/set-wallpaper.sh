#!/bin/bash
WALLS="$HOME/Pictures/wallpapers"
IMG=$(find "$WALLS" -type f | shuf -n 1)
swww img "$IMG" --transition-type wave --transition-duration 1
