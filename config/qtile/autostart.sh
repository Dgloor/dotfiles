#!/bin/sh

# Wallpaper
xwallpaper --stretch ~/dotfiles/wallpapers/0047.jpg &

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
udiskie &
# volumeicon &
