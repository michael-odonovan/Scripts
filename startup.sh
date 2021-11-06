#!/bin/bash

# wmctrl -s 0 = Switches to workspace 0 [workspaces are numbered from 0]

wmctrl -s 1
evince ~/Javascript/recycle-mobility/stuff/mockup.pdf &
sleep 2

wmctrl -s 2
nautilus &
nautilus &
sleep 2

wmctrl -s 3
keepassxc &
sleep 2

wmctrl -s 4
spotify &
sleep 2

wmctrl -s 0
nohup firefox "$@" > /dev/null 2>&1 &
sleep 2

