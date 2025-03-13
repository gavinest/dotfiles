# Dotfiles

Managed with [chezmoi](https://www.chezmoi.io/). Check out this blog [post](https://estenssorog.com/posts/easy-dotfiles-with-chezmoi/).


## Setting up a new machine


1. Install [Homebrew](https://brew.sh/)

2. `brew install chezmoi`

3. Use chezmoi to clone and sync dotfiles.

```
chezmoi init --apply gavinest
```

4. Install deps with brew

```
# change dir to the dotfiles directory
chezmoi cd 

# install the homebrew dependencies
brew bundle 
```

That's it! All deps from Iterm to oh-my-zsh and more are installed and configured!
