#!/bin/bash

CURRENT=$(brightnessctl -d rgb:kbd_backlight g)

if [[ $CURRENT -eq 0 ]]; then
    brightnessctl -r -d rgb:kbd_backlight
else 
    brightnessctl -s -d rgb:kbd_backlight s 0%
fi
