#!/bin/sh

# Wallpaper
xwallpaper --stretch Documents/dotfiles/wallpapers/0043.jpg

# Transparency
picom &

# Num lock
numlockx &

# Nofications
dunst &

# Typematic Delay
xset r rate 200 30 &

# Systray
# nm-applet & 
copyq & 
# volumeicon &
