#!/bin/bash

STATE_FILE="/tmp/touchpad_state"

if [ -f "$STATE_FILE" ]; then
    hyprctl keyword "device[ftcs1000:01-2808:0102-touchpad]:enabled" true
    notify-send "󰍽 Touchpad enabled"
    rm "$STATE_FILE"
else
    hyprctl keyword "device[ftcs1000:01-2808:0102-touchpad]:enabled" false
    notify-send "󰍾 Touchpad disabled"
    touch "$STATE_FILE"
fi

