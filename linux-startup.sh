#!/bin/bash

# wmctrl -s 0 = Switches to workspace 0 [workspaces are numbered from 0]

wmctrl -s 3
open . &
open . &
sleep 2

wmctrl -s 4
keepassxc &
sleep 2

wmctrl -s 0
nohup google-chrome "$@" > /dev/null 2>&1 &
sleep 2

