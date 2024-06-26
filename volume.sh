#!/bin/sh
msgTag="volumechange"

volume="$(pactl get-sink-volume 0 | awk '{print $5}' )"
mute="$(pactl get-sink-mute 0 | awk '{print $2}' )"


if [[ $volume == 0 || "$mute" == "yes" ]]; then
    # Show the sound muted notification
    notify-send -a "changeVolume" -h string:x-dunst-stack-tag:$msgTag -i $iconPath/audio-volume-muted.png "Volume muted" --expire-time=1000 
else
    # Show the volume notification
    notify-send -a "changeVolume" -h string:x-dunst-stack-tag:$msgTag -i $iconPath/audio-volume-high.png -h int:value:"$volume" "Volume: ${volume}" --expire-time=1000
fi
