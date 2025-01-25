#!/bin/bash

# Erhöhen der Belichtungszeit
current_exposure=$(v4l2-ctl --get-ctrl=exposure_time_absolute | grep -o '[0-9]\+')
max_exposure=10000
if [ "$current_exposure" -lt $max_exposure ]; then
    new_exposure=$((current_exposure + 100))
    v4l2-ctl --set-ctrl=exposure_time_absolute=$new_exposure
else
    echo "Belichtungszeit ist bereits am Maximum ($max_exposure)."
fi
