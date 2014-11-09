#!/bin/sh
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | cut -c 26-38
