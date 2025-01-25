#!/bin/bash

# Verringern der Weißabgleichtemperatur
current_white_balance=$(v4l2-ctl --get-ctrl=white_balance_temperature | grep -oP '\d+')
min_white_balance=2800
if [ "$current_white_balance" -gt "$min_white_balance" ]; then
    new_white_balance=$((current_white_balance - 300))
    v4l2-ctl --set-ctrl=white_balance_temperature=$new_white_balance
else
    echo "Weißabgleichtemperatur ist bereits am Minimum ($current_white_balance)."
fi
