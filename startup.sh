#!/bin/bash

#Switches to workspace 0 [workspaces are numbered from 0]
wmctrl -s 0
# gnome-terminal &
# sleep 2

wmctrl -s 2
nautilus &
nautilus &
sleep 2

wmctrl -s 3
keepassxc &
sleep 2

wmctrl -s 0
firefox &
sleep 2
