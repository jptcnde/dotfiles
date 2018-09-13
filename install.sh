#!/usr/bin/env bash

command_exists() {
    type "$1" > /dev/null 2>&1
}

DOTFILES="$HOME/.dotfiles"
cd $DOTFILES

echo "Installing dotfiles."

echo "Initializing submodule(s)"

git submodule update --init --recursive

source install/link.sh

source install/git.sh

source install/brew.sh

if ! command_exists zsh; then
    echo "zsh not found. Please install and then re-run installation scripts"
    exit 1
elif ! [[ $SHELL =~ .*zsh.* ]]; then
    echo "Configuring zsh as default shell"
    chsh -s "$(which zsh)"
fi

echo "Done. Reload your terminal."
