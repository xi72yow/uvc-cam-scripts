#!/bin/bash

# Erhöhen der Weißabgleichtemperatur
current_white_balance=$(v4l2-ctl --get-ctrl=white_balance_temperature | grep -oP '\d+')
max_white_balance=6500
if [ "$current_white_balance" -lt "$max_white_balance" ]; then
    new_white_balance=$((current_white_balance + 300))
    v4l2-ctl --set-ctrl=white_balance_temperature=$new_white_balance
else
    echo "Weißabgleichtemperatur ist bereits am Maximum ($current_white_balance)."
fi
