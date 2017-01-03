#!/bin/bash

# When writing 43 into brightness, actual_brightness stays at 42.
# Yes, only at this number. Such awesome technology.
# Therefore, use brightness instead of actual_brightness to not get stuck
# CURRENT_BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/actual_brightness)
CURRENT_BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/brightness)
MAX_BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/max_brightness)
MIN_BRIGHTNESS=1

STEPSIZE=$(echo "1 + 20 * ($CURRENT_BRIGHTNESS / $MAX_BRIGHTNESS)" | bc -l)

NEW_BRIGHTNESS=$(echo "$CURRENT_BRIGHTNESS - $STEPSIZE" | bc -l)

# superior bashnology to convert float to int
NEW_BRIGHTNESS=$(echo $NEW_BRIGHTNESS | awk '{print int($1)}')
CLAMPED_BRIGHTNESS=$(( NEW_BRIGHTNESS > MAX_BRIGHTNESS ? MAX_BRIGHTNESS : NEW_BRIGHTNESS ))
CLAMPED_BRIGHTNESS=$(( CLAMPED_BRIGHTNESS < MIN_BRIGHTNESS ? MIN_BRIGHTNESS : CLAMPED_BRIGHTNESS ))

echo $CLAMPED_BRIGHTNESS > /sys/class/backlight/intel_backlight/brightness
