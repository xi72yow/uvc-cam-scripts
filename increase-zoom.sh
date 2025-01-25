#!/bin/bash

# Erhöhen des Zooms
current_zoom=$(v4l2-ctl --get-ctrl=zoom_absolute | grep -o '[0-9]\+')
max_zoom=60
if [ $current_zoom -lt $max_zoom ]; then
    new_zoom=$((current_zoom + 7))
    v4l2-ctl --set-ctrl=zoom_absolute=$new_zoom
else
    echo "Zoom ist bereits am Maximum ($max_zoom)."
fi
