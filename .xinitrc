#!/bin/sh
nitrogen --restore &
xsetroot -cursor_name left_ptr &
picom -f &
sxhkd &

setxkbmap es


xinput set-prop 10 "libinput Natural Scrolling Enabled" 1
xinput set-prop 11 "libinput Natural Scrolling Enabled" 1

kitty &
aw-qt &

exec bspwm
