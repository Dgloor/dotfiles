#!/bin/sh

# Wallpaper
feh --bg-scale ~/Documents/dotfiles/wallpapers/0031.jpg &

# Transparency
picom &

# Num lock
numlockx &

# Nofications
dunst &

# Typematic Delay
xset r rate 200 30 &

# Systray
nm-applet & 
copyq & 
# volumeicon &
