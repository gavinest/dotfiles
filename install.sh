#!/usr/bin/env bash

# ----
# install script for vscode devcontainers
# ----

# install chezmoi and apply dotfiles
sh -c "$(curl -fsSL get.chezmoi.io)" -- init --apply gavinest

# install oh-my-zsh. https://github.com/deluan/zsh-in-docker
sh -c "$(curl -ivL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# zsh -c 'git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
# zsh -c 'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'

# install vim plugins
