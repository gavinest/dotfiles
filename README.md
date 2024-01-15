# Dotfiles

Managed with [chezmoi](https://www.chezmoi.io/). Check out the blog [post](https://estenssorog.com/posts/easy-dotfiles-with-chezmoi/) I wrote about it.

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

## Vim plugins

Managed with [vim-plug](https://github.com/junegunn/vim-plug)

**Common vim-plug commands**

```vim
" install plugins
:PlugInstall

" remove plugins no longer in .vimrc
:PlugClean
```
