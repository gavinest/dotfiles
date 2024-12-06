# Dotfiles

Managed with [chezmoi](https://www.chezmoi.io/). Check out this blog [post](https://estenssorog.com/posts/easy-dotfiles-with-chezmoi/).

**Common chezmoi commands**

```bash
# edit a file
chezmoi edit ~/.zshrc

# see the change that would be applied
chezmoi diff

# apply the change
chezmoi apply

# change to the chezmoi directory to commit changes
chezmoi cd
```

## Setting up a new machine

1. Install Oh-my-zsh and custom plugins

```
# custom plugins

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
```
1. Install `chezmoi` using the dotfiles repo command

- Github ssh key setup needed

```
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

1. Use [vim-plug](https://github.com/junegunn/vim-plug) to install vim extensions

```
# install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# enter vim then run
:PlugInstall
```

1. Install Homebrew and then brew managed deps

```
# Brewfile
asdf
chezmoi
hammerspoon
tree
jq
ripgrep
```

1. global python setup

```
asdf plugin-add python

asdf install python latest

asdf global python $(asdf list python | sort -V | tail -n 1)

pip install --upgrade pip && pip install ipython
```
