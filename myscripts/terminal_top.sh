#!/bin/sh
# creates a top tilix terminal window
# require wmctrl, debian -> sudo apt install wmctrl
NAME="topterm"
tilix --window-style=borderless --title=$NAME --geometry=1x1 
sleep 0.1
WIDTH=2560
HEIGHT=650
wmctrl -r $NAME -e "0,0,0,$WIDTH,$HEIGHT"