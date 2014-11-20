#!/bin/sh
xrandr\
 --output VIRTUAL1 --off\
 --output DP2 --off\
 --output DP1 --off\
 --output HDMI2 --off\
 --output HDMI1 --off
xrandr\
 --output LVDS1 --auto\
 --output VGA1 --auto --right-of LVDS1
