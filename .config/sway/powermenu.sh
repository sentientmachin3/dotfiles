#!/bin/bash

op=$( echo -e " Poweroff\n Reboot\n Suspend\n Lock\n Logout" | wofi -i --dmenu | awk '{print tolower($2)}' )

case $op in 
        poweroff)
                ;&
        reboot)
                ;&
        suspend)
                systemctl $op
                ;;
        lock)
		        hyprctl dispatch exit
                ;;
        logout)
                swaymsg exit
                ;;
esac
