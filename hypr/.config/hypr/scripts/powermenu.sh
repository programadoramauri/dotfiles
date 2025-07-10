#!/bin/bash
chosen=$(printf "  Desligar\n  Reiniciar\n  Suspender\n  Bloquear" | rofi -dmenu -p "Power")

case "$chosen" in
  *Desligar) systemctl poweroff ;;
  *Reiniciar) systemctl reboot ;;
  *Suspender) systemctl suspend ;;
  *Bloquear) loginctl lock-session ;;
esac
