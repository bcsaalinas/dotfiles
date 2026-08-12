#!/bin/bash
if hyprctl monitors | grep -qE "Monitor (HDMI-A-1|DP-1)"; then
    hyprctl keyword monitor "eDP-1, disable"
else
    hyprctl keyword monitor "eDP-1, 1920x1080@144, 5120x0, 1"
fi
