#!/bin/bash

# Verringern der Belichtungszeit
current_exposure=$(v4l2-ctl --get-ctrl=exposure_time_absolute | grep -o '[0-9]\+')
min_exposure=1
if [ "$current_exposure" -gt $min_exposure ]; then
    new_exposure=$((current_exposure - 100))
    v4l2-ctl --set-ctrl=exposure_time_absolute=$new_exposure
else
    echo "Belichtungszeit ist bereits am Minimum ($min_exposure)."
fi
