#!/bin/bash

## brew installs ============================
### Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install git
brew install gh
brew install --cask iterm2
brew install yarn
brew tap homebrew/cask-fonts ### for hack nerd font
brew install --cask font-hack-nerd-font
brew install ripgrep
brew install tmux
brew install trash-cli
brew install --cask keepassxc
brew install spaceman
brew install node
brew install nvm ### node version manager
brew install --cask freecad
brew install wget ## missing dep for some nvim stuff
brew install go
brew install luarocks
brew install jesseduffield/lazygit/lazygit
brew install imagemagick
brew install fzf
# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

## neovim
brew install neovim
brew tree-sitter
brew install luajit

brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd

### get rid of annoying terminal message at opening:
cd
touch .hushlogin

### oh-my-zsh plugin
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
### zsh plugins
cd ~/.oh-my-zsh/custom/
### autocompletion
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

brew services start skhd
brew services start yabai
