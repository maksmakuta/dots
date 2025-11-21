#!/bin/bash
# Apply cursor from gsettings before Hyprland loads anything that uses it

export XCURSOR_THEME="$(gsettings get org.gnome.desktop.interface cursor-theme | tr -d \')"
export XCURSOR_SIZE=24

# Optionally export GTK theme too
export GTK_THEME="$(gsettings get org.gnome.desktop.interface gtk-theme | tr -d \')"

# Start dconf-service if needed
pgrep -x dconf-service >/dev/null || /usr/lib/dconf/dconf-service &

# Continue with your usual startup stuff

