#!/bin/bash

# misc
ln -sf ~/code/dotfiles/welcome.sh ~/utils/welcome.sh
ln -sf ~/code/dotfiles/.editorconfig ~/.editorconfig
ln -sf ~/code/dotfiles/.gitignore ~/.gitignore
ln -sf ~/code/dotfiles/.ignore ~/.ignore

# zsh
ln -sf ~/code/dotfiles/configs/neofetch/config.conf ~/.config/neofetch/config.conf
ln -sf ~/code/dotfiles/configs/zsh/.zshrc ~/.zshrc
ln -sf ~/code/dotfiles/configs/zsh/.alias ~/.alias
ln -sf ~/code/dotfiles/configs/zsh/.functions ~/.functions
ln -sf ~/code/dotfiles/configs/starship/starship.toml ~/.starship/starship.toml

# host
sudo ln -sf ~/code/dotfiles/etc/hosts /etc/hosts

#espanso
ln -sf ~/code/dotfiles/configs/espanso/common.yml /Users/ashish/Library/Preferences/espanso/match/common.yml
ln -sf ~/code/dotfiles/configs/espanso/utils.yml /Users/ashish/Library/Preferences/espanso/match/utils.yml
ln -sf ~/code/dotfiles/configs/espanso/vscode.yml /Users/ashish/Library/Preferences/espanso/match/vscode.yml
