#!/usr/bin/env bash

# ----
# install script for vscode devcontainers
# ----

# install zsh
apt-get update && apt-get install -y zsh

# install oh-my-zsh. https://github.com/deluan/zsh-in-docker
curl -fsSL https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | zsh || true
zsh -c 'git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
zsh -c 'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'

# install chezmoi and apply dotfiles
zsh -c "$(curl -fsSL get.chezmoi.io)" -- init --apply gavinest

# install vim plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c --not-a-term "PlugInstall" -c "q" -c "q"
