#!/bin/bash

# Install required packages
echo "Installing required packages"
cd
sudo pacman -S zsh sway swayr waybar dunst kitty wofi neovim tmux fd fzf ripgrep npm \ 
    pip vivid rust python3 typescript golang gopls pnpm restic aws-cli-v2
yay -S nvim-packer-git
npm i -g typescript-langservers-extracted prettier eslint
mkdir repos

# Copy configs
echo "Copying configuration files"
cp -R ./sway ~/.config/
cp -R ./waybar ~/.config/
cp -R ./wofi ~/.config/
cp -R ./kitty ~/.config/
cp -R ./dunst ~/.config/
cp -R ./nvim ~/.config/
cp ./zshrc ~/.zshrc
cp ./zprofile ~/.zprofile
cp ./aliases ~/.aliases
cp ./tmux.conf ~/.tmux.conf
cp utils/* ~/.local/bin/


# Last thing
chsh -s $(which zsh)
echo "Set zsh as default shell"
echo "Configuration complete, you may now restart the computer"
