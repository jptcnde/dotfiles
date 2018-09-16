#!/usr/bin/env bash

if test ! "$( which brew )"; then
    PATH="$HOME/.linuxbrew/bin:$PATH"
    git clone https://github.com/Linuxbrew/brew.git ~/.linuxbrew
    brew
fi

echo -e "\\n\\nInstalling homebrew packages..."
echo "=============================="

formulas=(
    zsh
    shellcheck
    shfmt
    ack
    tree
    wget
    z
    zplug
)

for formula in "${formulas[@]}"; do
    formula_name=$( echo "$formula" | awk '{print $1}' )
    if brew list "$formula_name" > /dev/null 2>&1; then
        echo "$formula_name already installed... skipping."
    else
        brew install "$formula"
    fi
done

# After the install, setup fzf
# echo -e "\\n\\nRunning fzf install script..."
# echo "=============================="
# /usr/local/opt/fzf/install --all --no-bash --no-fish

# after hte install, install neovim python libraries
# echo -e "\\n\\nRunning Neovim Python install"
# echo "=============================="
# pip2 install --user neovim
# pip3 install --user neovim

# Change the default shell to zsh
zsh_path="$( which zsh )"
if ! grep "$zsh_path" /etc/shells; then
    echo "adding $zsh_path to /etc/shells"
    echo "$zsh_path" | sudo tee -a /etc/shells
fi

if [[ "$SHELL" != "$zsh_path" ]]; then
    chsh -s "$zsh_path"
    echo "default shell changed to $zsh_path"
fi
