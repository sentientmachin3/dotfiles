#!/bin/bash

cp -R ~/.config/sway/ ./
cp -R ~/.config/waybar ./
cp -R ~/.config/wofi ./
cp -R ~/.config/kitty ./
cp -R ~/.config/dunst ./
mkdir tmux && cp ~/.tmux/theme.conf ./tmux && cp -r ~/.tmux/scripts ./tmux/
rm -rf ./tmux/plugins
cp ~/.zshrc ./zshrc
cp ~/.aliases ./aliases
cp ~/.zprofile ./zprofile
cp -r ~/.config/nvim .
cp ~/.tmux.conf ./tmux.conf
