#!/bin/bash

selected=`sudo archlinux-java status | tail -n +2 | fzf`
sudo archlinux-java set $selected
