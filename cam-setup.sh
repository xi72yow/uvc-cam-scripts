#!/bin/bash
v4l2-ctl -d /dev/video0 --set-ctrl=white_balance_automatic=0 &&
v4l2-ctl -d /dev/video0 --set-ctrl=white_balance_temperature=3000 &&
v4l2-ctl -d /dev/video0 --set-ctrl=zoom_absolute=36
