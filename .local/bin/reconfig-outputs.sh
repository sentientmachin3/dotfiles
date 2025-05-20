#!/bin/bash

sway_out=$(swaymsg -t get_outputs -r)
names=$(echo $sway_out | jq -r '.[] | .name')
for name in $names; do
    if [[ $name =~ ^eDP.* ]]; then
        laptop_name=$name
    fi
    if [[ $name =~ ^DP.* ]]; then
        external_name=$name
    fi
done

if [[ -z $external_name ]]; then
    exit 0
fi
swaymsg output $laptop_name toggle
