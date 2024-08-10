#1/usr/bin/env bash

#initlise wallpaper daemon
swww init &
#setting wallpaper
swww img /home/lincolnh/Downloads/wallhaven-6d6vmq_3840x3072.png
nm-applet --indicator &

#the bar
waybar &

#dunst
dunst
