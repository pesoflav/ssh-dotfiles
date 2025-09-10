# Set XDG Base Directories
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_STATE_HOME=${XDG_STATE_HOME:-$HOME/.local/state}

# Set up aliases
source "$XDG_CONFIG_HOME/bash/aliases.sh"

# Base settings
export TERM=xterm-256color

# Server specific commands
if [ "$(hostname)" = "BazaarBetweenTime" ]; then
    if [ -e /etc/profile.d/nix.sh ]; then
	. /etc/profile.d/nix.sh
    else
	echo "[ERROR] /etc/profile.d/nix.sh file not found."
    fi
fi

