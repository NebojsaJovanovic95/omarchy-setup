#!/usr/bin/env bash

# Elan touchpad device name
DEVICE=$(hyprctl devices | grep -i touchpad | xargs)

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
