# dotfiles

This repo contains my configuration files for my dev / daily driver environment, which includes:

- `sway` as WM, with a tabbed layout, and `waybar` as control panel
- `wofi` as application launcher
- `alacritty` as terminal
- `dunst` as notification manager

## Installation

To install the files in the directory run `stow -t ~/ .`. This will symlink all files in the current directory into your home,
following the tree laid out in this directory.

## Neovim setup

Neovim is configured to behave "similarly" to VSC***.
To make it work you just need to install the Lazy plugin manager and you are good to go.

## Color themes

- tmux: [gruvbox](https://github.com/egel/tmux-gruvbox)
- neovim: [gruvbox-material](https://github.com/sainnhe/gruvbox-material)
- wayland and sway are custom

**Note: some aliases require [shdevkit](https://github.com/sentientmachin3/shdevkit) to execute**
