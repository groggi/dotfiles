export ZSH=~/.zsh

exists() {
    type -t "$1" > /dev/null 2>&1;
}

if ! exists pyenv; then
    eval "$(pyenv init - zsh)"
    eval "$(pyenv virtualenv-init -)"
fi

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/*.zsh) source $config_file

# Load and run compinit
autoload -U compinit
compinit -i

if [ -f ".zshrc.local" ]; then
    source .zshrc.local
fi
