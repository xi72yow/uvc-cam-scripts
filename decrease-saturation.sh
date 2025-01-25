#!/bin/bash

# Verringern der Sättigung
current_saturation=$(v4l2-ctl --get-ctrl=saturation)
min_saturation=0
if [ $current_saturation -gt $min_saturation ]; then
    new_saturation=$((current_saturation - 1))
    v4l2-ctl --set-ctrl=saturation=$new_saturation
else
    echo "Sättigung ist bereits am Minimum ($min_saturation)."
fi
