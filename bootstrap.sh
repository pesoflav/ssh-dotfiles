#!/bin/bash

# Set up XDG_CONFIG_HOME
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
mkdir -p $XDG_CONFIG_HOME

# Symlink config dirs
ln -sf "$PWD/.config/bash" "$XDG_CONFIG_HOME/bash"
ln -sf "$PWD/.config/git" "$XDG_CONFIG_HOME/git"
ln -sf "$PWD/.config/tmux" "$XDG_CONFIG_HOME/tmux"
ln -sf "$PWD/.vimrc" ~/.vimrc

# Source bash shell
ln -sf "$PWD/.bashrc" ~/.bashrc
source ~/.bashrc

# Server-specific
if [ "$(hostname)" = "BazaarBetweenTime" ]; then
    echo "Bootstrapping for BazaarBetweenTime"
    ln -sf "$PWD/.config/nix" "$XDG_CONFIG_HOME/nix"
fi

