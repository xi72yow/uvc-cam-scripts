#!/bin/bash
# Zoom-In-Meme-Effekt

# Ursprünglichen Zoom-Wert speichern
original_zoom=$(v4l2-ctl --get-ctrl=zoom_absolute | grep -o '[0-9]\+')

# Maximale Zoom-Stufe
max_zoom=40

# Zoom-In-Effekt
for ((zoom = $original_zoom; zoom <= $max_zoom; zoom += 7)); do
    v4l2-ctl --set-ctrl=zoom_absolute=$zoom
    sleep 0.1
done

# Zoom-Out-Effekt
for ((zoom = $max_zoom; zoom >= $original_zoom; zoom -= 7)); do
    v4l2-ctl --set-ctrl=zoom_absolute=$zoom
    sleep 0.1
done

# Ursprünglichen Zoom-Wert wiederherstellen
v4l2-ctl --set-ctrl=zoom_absolute=$original_zoom
