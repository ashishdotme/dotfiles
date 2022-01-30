#!/bin/bash

# misc
ln -sf ~/code/dotfiles/configs/.editorconfig ~/.editorconfig

# zsh
ln -sf ~/code/dotfiles/configs/zsh/.zshrc ~/.zshrc
ln -sf ~/code/dotfiles/configs/zsh/alias.zsh ~/alias.zsh
ln -sf ~/code/dotfiles/configs/starship/starship.toml ~/.starship/starship.toml

# host
sudo ln -sf ~/code/dotfiles/etc/hosts /etc/hosts

#espanso
ln -sf ~/code/dotfiles/configs/espanso/common.yml /Users/ashish/Library/Preferences/espanso/user/common.yml
ln -sf ~/code/dotfiles/configs/espanso/utils.yml /Users/ashish/Library/Preferences/espanso/user/utils.yml