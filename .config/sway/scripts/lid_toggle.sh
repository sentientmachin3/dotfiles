#!/bin/bash
LID=`cat /proc/acpi/button/lid/LID0/state | awk '{ print $2 }'`
if [ $LID == "closed" ] ; then
        swaymsg output eDP-1 disable
fi
