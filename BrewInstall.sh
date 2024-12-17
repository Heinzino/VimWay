#!/bin/bash

# Update package list and install dependencies
echo "Updating package list..."
sudo apt-get update

echo "Installing build-essential, curl, and git..."
sudo apt-get install -y build-essential curl git

# Check if Homebrew is already installed
if ! command -v brew &>/dev/null; then
    echo "Downloading and installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to PATH
    echo "Adding Homebrew to PATH..."
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >>~/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
else
    echo "Homebrew is already installed!"
fi

# Confirm installation
echo "Checking Homebrew installation..."
brew --version && echo "Homebrew installed successfully!" || echo "Homebrew installation failed."
