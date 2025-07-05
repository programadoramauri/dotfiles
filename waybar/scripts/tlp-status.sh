#!/bin/bash

# Encontra o primeiro dispositivo de alimentação AC válido
for device in /sys/class/power_supply/*; do
    if [[ -f "$device/online" ]]; then
        AC_DEVICE="$device"
        break
    fi
done

# Se não encontrou nenhum, mostra erro
if [[ -z "$AC_DEVICE" ]]; then
    echo "⚠️ AC status not found"
    exit 1
fi

# Lê modo atual do TLP
status=$(tlp-stat -s 2>/dev/null | grep "Mode" | awk '{print $3}')

# Verifica se está conectado à energia
power=$(cat "$AC_DEVICE/online")

# Define ícone
if [[ "$power" == "1" ]]; then
    icon=""  # Plugado na tomada
else
    icon="🔋"  # Bateria
fi

echo "$icon $status"

