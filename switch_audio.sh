#!/bin/bash

# Created by
# https://chatgpt.com/share/679394b8-babc-800e-aaf8-dc90a5e574d0

# Audio sink names
HDMI_SINK="alsa_output.pci-0000_07_00.1.HiFi__hw_Generic_3__sink"
BUILTIN_SINK="alsa_output.pci-0000_07_00.6.HiFi__hw_Generic_1__sink"

# Get the currently focused window's process ID
FOCUSED_PID=$(xdotool getwindowpid $(xdotool getwindowfocus))

# Find all sink-inputs
SINK_INPUTS=$(pactl list short sink-inputs)

# Determine the sink to use
if [ "$1" = "HDMI" ]; then
    TARGET_SINK=$HDMI_SINK
elif [ "$1" = "BuiltIn" ]; then
    TARGET_SINK=$BUILTIN_SINK
else
    echo "Invalid sink specified."
    exit 1
fi

pactl set-default-sink $TARGET_SINK

# TODO: grabbing the current application doesn't always seem work

# Switch the audio for the focused application's streams
while read -r line; do
    INPUT_ID=$(echo $line | awk '{print $1}')
    INPUT_PID=$(pactl list sink-inputs | grep -A20 "Sink Input #$INPUT_ID" | grep -m1 'application.process.id' | awk -F'"' '{print $2}')
    
    # echo "$TARGET_SINK, $INPUT_ID, $FOCUSED_PID"
    # if [ "$INPUT_PID" = "$FOCUSED_PID" ]; then
        pactl move-sink-input $INPUT_ID $TARGET_SINK
    # fi
done <<< "$SINK_INPUTS"

