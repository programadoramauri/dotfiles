#!/bin/bash

DEVICE_PATH=$(upower - e | grep 'bluetooth')
if [ -z "$DEVICE_PATH" ]; then
  echo "🔇"
  exit
fi

BATTERY_LEVEL=$(upower -i "$DEVICE_PATH" | grep -E "percentage" | awk '{print $2}')
DEVICE_NAME=$(basename "$DEVICE_PATH" | sed 's/_/ /g' | cut -d' ' -f2-)

echo "$BATTERY_LEVEL"
