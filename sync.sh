#!/bin/bash

# zsh
ln -sf ~/code/dotfiles/configs/zsh/.zshrc ~/.zshrc
ln -sf ~/code/dotfiles/configs/zsh/alias.zsh ~/alias.zsh
ln -sf ~/code/dotfiles/configs/starship/starship.toml ~/.starship/starship.toml

# host
sudo ln -sf ~/code/dotfiles/etc/hosts /etc/hosts

#espanso
