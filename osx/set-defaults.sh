#!/bin/bash

# Run ./set-defaults.sh and you'll be good to go.


# https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# ~/.osx — http://mths.be/osx
# https://github.com/ptb/Mac-OS-X-Lion-Setup/blob/master/setup.sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Done. Note that some of these changes require a logout/restart to take effect."

