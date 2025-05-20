#!/bin/bash

read path
tmux new-window -c $(echo $path | cut -d';' -f1)
