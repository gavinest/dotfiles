# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
)

# Fix oh-my-zsh warning at shell start-up
# "Insecure completion-dependent directories detected"
ZSH_DISABLE_COMPFIX="true"

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# activate pyenv for python virtual environments
#export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# activate jenv for java version management
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# ensure that JAVA_HOME is correct
jenv enable-plugin export
# make Maven aware of the Java version in use (and switch when your project does)
jenv enable-plugin maven

# set path for Go install
export GOPATH="$HOME/go"
PATH="$GOPATH/bin:$PATH"

# vim keybindings
bindkey -v

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi # The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi
# export python version for google cloud sdk to use
export CLOUDSDK_PYTHON="$HOME/.pyenv/shims/python"
if [ -e /Users/estenssg/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/estenssg/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
