#!/bin/sh

datetime () {
    date=$(date +'%A, %b %d')
    time=$(date +'%H:%M')
    echo "$date $time"
}

battery () {
    battery_perc_value="$(cat /sys/class/power_supply/BAT0/capacity)"
    battery_status=$(cat /sys/class/power_supply/BAT0/status)
    battery_icon=""
    battery_full=""
    if [ "$battery_status" = "Charging" ]; then
        battery_icon=""
    elif [ "$battery_status" = "Full" ]; then
        battery_full="[FULL]"
        battery_icon=""
    fi
    echo "$battery_icon $battery_perc_value% $battery_full"
}

network () {
    net=$(nmcli -t -c no device status)
    eth=$(echo "$net" | grep "ethernet" | grep "connected")
    wifi=$(echo "$net" | grep "wifi" | grep "connected" | grep -v "disconnected")
    if [ "$eth" != "" ]; then
        echo "⇋ ETH"
    elif [ "$wifi" != "" ]; then
        conn_name=$(echo "$wifi" | cut -d ":" -f 4)
        echo " $conn_name"
    else
        echo "Disconnected"
    fi
}

while : 
do
    echo "$(network) | $(battery)| $(datetime)"
    sleep 1
done
