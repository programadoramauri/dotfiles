#!/bin/bash

if bluetoothctl show | grep -q "Powered: yes"; then
  if bluetoothctl info | grep -q "Connected: yes"; then
    device=$(bluetoothctl info | grep "Alias" | cut -d ' ' -f 2-)
    echo " $device"
  else
    echo ""
  fi
else
  echo ""
fi
