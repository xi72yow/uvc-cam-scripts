#!/bin/bash
# Set focus from auto to manual mode
v4l2-ctl -d /dev/video0 --set-ctrl=focus_automatic_continuous=0 &&
v4l2-ctl -d /dev/video0 --set-ctrl=focus_absolute=42

echo "Focus set to manual mode with value 42" 