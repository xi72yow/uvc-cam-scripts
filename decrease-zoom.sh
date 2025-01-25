#!/bin/bash

# Verringern des Zooms
current_zoom=$(v4l2-ctl --get-ctrl=zoom_absolute | grep -o '[0-9]\+')
min_zoom=0
if [ $current_zoom -gt $min_zoom ]; then
    new_zoom=$((current_zoom - 7))
    v4l2-ctl --set-ctrl=zoom_absolute=$new_zoom
else
    echo "Zoom ist bereits am Minimum ($min_zoom)."
fi
