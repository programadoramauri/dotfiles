#!/bin/bash

DEVICE_MAC=$(bluetoothctl paired-devices | grep -i headset | awk '{print $2}')
BATTERY_HEX=$(bluetoothctl info "$DEVICE_MAC" | grep "Battery Percentage" | awk '{print $3}')

# Remove prefixo 0x e converte para decimal
BATTERY_DEC=$((16#${BATTERY_HEX#0x}))

echo "🎧 $BATTERY_DEC%"
