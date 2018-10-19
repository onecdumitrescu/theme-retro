#!/bin/sh

TOUCHPAD="SynPS/2 Synaptics TouchPad"
FOUND=0

for MOUSE in `find /sys/class/input -name mouse\*`
do
    if [ "`cat $MOUSE/device/name`" != "$TOUCHPAD" ]
    then
        FOUND=1
  #Find a Mouse device other than the TouchPad and record the variable.
        break
    fi
done

DISPLAY=:0
export DISPLAY
for USER in `w -h | cut -d\  -f1 | sort | uniq`
do
    XAUTHORITY=`sudo -Hiu $USER env | grep ^HOME= | cut -d= -f2`/.Xauthority
    export XAUTHORITY
    TOUCHPADDEVICE=$(($(xinput list | grep -i "$TOUCHPAD" | cut -d= -f2 | cut -d[ -f1)+0))
#Find the Touchpad Id
    if [ $FOUND -eq 1 ]; then
#If another device is founded, disable touchpad
        xinput disable $TOUCHPADDEVICE
    else
#else enable touchpad
        xinput enable $TOUCHPADDEVICE
    fi
done
