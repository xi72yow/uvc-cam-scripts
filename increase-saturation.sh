#!/bin/bash

# Erhöhen der Sättigung
current_saturation=$(v4l2-ctl --get-ctrl=saturation)
max_saturation=100
if [ $current_saturation -lt $max_saturation ]; then
    new_saturation=$((current_saturation + 1))
    v4l2-ctl --set-ctrl=saturation=$new_saturation
else
    echo "Sättigung ist bereits am Maximum ($max_saturation)."
fi
