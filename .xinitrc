#!/usr/bin/env bash

sudo xinput set-prop 'DLL0797:01 06CB:7E92 Touchpad' 'libinput Tapping Enabled' 1 &
sudo xinput set-prop 'DLL0797:01 06CB:7E92 Touchpad' 'libinput Natural Scrolling Enabled' 1 &

#xrandr --dpi 220 &
xrandr -s 1920x1080
xrandr --dpi 120

start-pulseaudio-x11
#pulseaudio --start &

xset +fp /home/hizkifw/.fonts
xset fp rehash

compton --config ~/.config/compton.conf &

feh --bg-scale ~/Pictures/_wallpaper.jpg &
#xsetroot -solid "#333333"

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

exec i3
