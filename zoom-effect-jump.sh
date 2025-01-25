#!/bin/bash
# Zoom-In-Meme-Effekt

# Ursprünglichen Zoom-Wert speichern
original_zoom=$(v4l2-ctl --get-ctrl=zoom_absolute | grep -o '[0-9]\+')

# Maximale Zoom-Stufe
max_zoom=17

# Zoom-In-Effekt
v4l2-ctl --set-ctrl=zoom_absolute=$max_zoom
sleep 3

# Zoom-Out-Effekt
v4l2-ctl --set-ctrl=zoom_absolute=$original_zoom