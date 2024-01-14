#!/usr/bin/env bash

# ----
# install script for vscode devcontainers
# ----

# # Uses "robbyrussell" theme (original Oh My Zsh theme), with no plugins
# sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)" -- \
#     -t robbyrussell \
#     -p git zsh-autosuggestions zsh-syntax-highlighting

# install zsh
apt-get update && apt-get install -y zsh

# install oh-my-zsh. https://github.com/deluan/zsh-in-docker
sh -c "$(curl -ivL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" | zsh || true
zsh -c 'git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
zsh -c 'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'

# install chezmoi and apply dotfiles
zsh -c "$(curl -fsSL get.chezmoi.io)" -- init --apply gavinest

# install vim plugins
