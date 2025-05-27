#!/usr/bin/env bash

set -e

# Get the absolute path of the current repo directory
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Link /etc/nixos to the repo (with backup if needed)
if [ -e /etc/nixos ] && [ ! -L /etc/nixos ]; then
    echo "Backing up existing /etc/nixos to /etc/nixos.backup"
    sudo mv /etc/nixos /etc/nixos.backup
fi

if [ -L /etc/nixos ]; then
    echo "/etc/nixos is already a symlink. Updating..."
    sudo rm /etc/nixos
fi

echo "Linking $REPO_DIR to /etc/nixos"
sudo ln -s "$REPO_DIR" /etc/nixos

# Link nix-install script
INSTALL_SCRIPT="/usr/local/bin/nix-install"
REPO_SCRIPT="$REPO_DIR/scripts/nix-install"

if [ ! -f "$REPO_SCRIPT" ]; then
    echo "Error: $REPO_SCRIPT does not exist."
    exit 1
fi

if [ -L "$INSTALL_SCRIPT" ]; then
    echo "$INSTALL_SCRIPT is already a symlink. Updating..."
    sudo rm "$INSTALL_SCRIPT"
elif [ -e "$INSTALL_SCRIPT" ]; then
    echo "Backing up existing $INSTALL_SCRIPT to $INSTALL_SCRIPT.backup"
    sudo mv "$INSTALL_SCRIPT" "$INSTALL_SCRIPT.backup"
fi

echo "Linking $REPO_SCRIPT to $INSTALL_SCRIPT"
sudo ln -s "$REPO_SCRIPT" "$INSTALL_SCRIPT"

echo "Installation complete."


# Author: dampdigits <dampdigits@gmail.com>
