#!/bin/bash

## brew installs ============================
### Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

### git
brew install git
brew install gh

### iterm
brew install --cask iterm2

### wmctrl (for startup.sh script)
brew install wmctrl

### yarn
brew install yarn

### hack nerd font
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

## Other ======================
### get rid of annoying terminal message at opening:
cd
touch .hushlogin


## yabai and skhd window management ===========================
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
brew services start skhd
brew services start yabai

