#!/usr/bin/env bash

# Elan touchpad device name
DEVICE=$(hyprctsl devices | grep -i touchpad | xargs)
if [ -z "$DEVICE" ]; then
  DEVICE=$(hyprctl devices | awk '/mice:/{f=1} f && /bcm5974/{print "bcm5974"; exit}')
fi
# state file
STATEFILE="$HOME/.cache/touchpad.state"
# Default to ON if no state file exists

if [ ! -f "$STATEFILE" ]; then
  echo "on" > "$STATEFILE"
fi

# Read current state
CURRENT=$(cat "$STATEFILE")

# Toggle
if [ "$CURRENT" = "on" ]; then
  hyprctl keyword device[$DEVICE]:enabled false
  echo "off" > "$STATEFILE"
else
  hyprctl keyword device[$DEVICE]:enabled true
  echo "on" > "$STATEFILE"
fi
