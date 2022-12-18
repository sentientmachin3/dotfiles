#!/bin/bash

cp -R ~/.config/sway/ ./
cp -R ~/.config/waybar ./
cp -R ~/.config/wofi ./
cp -R ~/.config/kitty ./
cp -R ~/.config/dunst ./
cp ~/.zshrc ./zshrc
cp ~/.aliases ./aliases
cp ~/.zprofile ./zprofile

mkdir -p nvim/lua
cp ~/.config/nvim/init.vim ./nvim/init.vim
cp ~/.config/nvim/lua/plugins.lua ./nvim/lua/plugins.lua
