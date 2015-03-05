#!/bin/sh
cd ~/openwrt
ret1=$(git status --porcelain | wc -l)
ret2=$(git status | grep "Ihr Branch ist vor .* Commit" | wc -l)

if [ $ret1 -eq "0" ]
  then
    ret="c"
  else
    ret="0"
fi
if [ $ret2 -eq "0" ]
  then
    ret="$ret p"
  else
    ret="$ret 0"
fi


echo $ret

