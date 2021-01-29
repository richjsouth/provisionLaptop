#!/bin/bash 
picom &
variety &
syncthing-gtk -m &
#flameshot
~/.config/polybar/launch.sh &
# mopidy --config ~/.config/mopidy/mopidy.conf
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
