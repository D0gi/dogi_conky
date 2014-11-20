r=$(xrandr|grep VGA|grep disconnected)
if [[ $r == "" ]]; then
  ~/.screenlayout/doppelmonitor.sh
else
  ~/.screenlayout/laptop.sh
fi
date >> ~/zeitstempel
killall conky
killall nm-applet
#btsync kill
kill $(ps aux | grep btsync | grep python | awk '{print $2}')


synclient MaxTapTime=0 &

nm-applet &
cinnamon-sound-applet &
dropbox start
btsync-gui &
conky &
