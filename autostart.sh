#!/bin/sh
feh --bg-scale ~/suckless/dwm/Wallpaper.jpg

setxkbmap -layout us,ru,ua -option grp:alt_shift_toggle
setxkbmap -option caps:swapescape

while true; do
    bash ~/suckless/dwm/ui.sh
    sleep 1s
done &

