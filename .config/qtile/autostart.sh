#!/bin/sh

# wallpaper
feh --bg-scale ~/Documents/dotfiles/wallpapers/0031.jpg &

# Transparency
picom &

# num lock
numlockx &

# Nofications
dunst &

# systray
nm-applet & 
copyq & 
# volumeicon &
