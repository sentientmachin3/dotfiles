#!/bin/bash

cp -R ~/.config/sway/ ./
cp -R ~/.config/waybar ./
cp -R ~/.config/wofi ./
cp -R ~/.config/kitty ./
cp -R ~/.config/dunst ./
rm -rf ./tmux && mkdir tmux && cp ~/.tmux/theme.conf ./tmux && cp -r ~/.tmux/scripts ./tmux/
rm -rf ./tmux/plugins
cp ~/.zshrc ./zshrc
cp ~/.aliases ./aliases
cp ~/.zprofile ./zprofile
rm -rf ./nvim && cp -r ~/.config/nvim .
cp ~/.tmux.conf ./tmux.conf

# Experimental stuff
cp ~/.config/alacritty/alacritty.yml ./
