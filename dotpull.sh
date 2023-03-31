#!/bin/bash
# destributes my dotfiles onto a new machine from my dotfiles GitHub repo

# keeping .gitconfig out of this at moment so can share this script

cd
mkdir repos && cd repos
git clone https://github.com/michael-odonovan/dotfiles.git

# git
cp ~/repos/dotfiles/.gitmessage ~/.gitmessage 

# config files
cp ~/repos/dotfiles/.bash_profile ~/.bash_profile 
cp ~/repos/dotfiles/.tmux.conf ~/.tmux.conf 
cp ~/repos/dotfiles/kitty.conf ~/.config/kitty/kitty.conf

# window manager
cp ~/repos/dotfiles/.yabairc ~/.yabairc 
cp ~/repos/dotfiles/.skhdrc ~/.skhdrc 

# vscode
mkdir ~/Library/Application\ Support/Code/User/
cp ~/repos/dotfiles/vs-code/settings.json ~/Library/Application\ Support/Code/User/settings.json 
cp ~/repos/dotfiles/vs-code/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json 

