#!/bin/bash

IMAGE=/tmp/i3lock.png

BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/brightness)
scrot $IMAGE
#convert -scale 20% -scale 500% $IMAGE $IMAGE
#convert -scale 20% -scale 500% -grayscale rec601luma $IMAGE $IMAGE
#convert -scale 50% -scale 200% -grayscale rec601luma $IMAGE $IMAGE
#convert -scale 50% -blur 5x2 -scale 200% -grayscale rec601luma $IMAGE $IMAGE
#convert -colors 16 -scale 50% -blur 5x2 -scale 200%  $IMAGE $IMAGE
#convert -scale 50% -colors 8 -blur 5x3 -scale 200% $IMAGE $IMAGE
#convert -scale 50% -colors 8 -blur 5x3 -scale 200% $IMAGE $IMAGE
#convert -scale 20% -grayscale rec601luma -scale 500% $IMAGE $IMAGE
convert -colors 4 -blur 5x3 -scale 20% -scale 500% $IMAGE $IMAGE
echo 1 > /sys/class/backlight/intel_backlight/brightness
i3lock -n -u -i $IMAGE
echo $BRIGHTNESS > /sys/class/backlight/intel_backlight/brightness
rm $IMAGE
