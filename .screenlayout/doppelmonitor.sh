#!/bin/sh
#xrandr --output LVDS1 --off --output VGA1 --off --output HDMI1 --off

xrandr --output VIRTUAL1 --off\
 --output LVDS1 --off\
 --output DP3 --off\
 --output DP2 --off\
 --output DP1 --off\
 --output HDMI3 --off\
 --output HDMI2 --off
xrandr\
 --output VGA1 --auto\
 --output HDMI1 --auto --right-of VGA1
awsetbg /home/dogi/Bilder/dog_original.png
