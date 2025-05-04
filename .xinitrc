#!/bin/sh
nitrogen --restore &
xsetroot -cursor_name left_ptr &
picom -f &
sxhkd &

setxkbmap es


xinput set-prop 10 "libinput Natural Scrolling Enabled" 0
xinput set-prop 11 "libinput Natural Scrolling Enabled" 1

export LANG=es_ES.UTF-8
export LANGUAGE=es_ES:en_US

kitty &
aw-qt &

setxkbmap -layout "es,us" -option "grp:alt_shift_toggle"

exec bspwm


