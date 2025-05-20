#!/bin/bash

read path
wrt_path=$(echo $path | cut -d';' -f1)
session_name=$(echo $path | cut -d';' -f2)
tmux new-session -c $path -d -n $session_name
