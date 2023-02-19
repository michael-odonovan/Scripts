#!/bin/bash
# destributes my dotfiles onto a new machine from my DotFiles GitHub repo

# keeping .gitconfig out of this at moment so can share this script

cd
mkdir Repos && cd Repos
git clone https://github.com/michael-odonovan/DotFiles.git

# git
cp ~/Repos/DotFiles/.gitmessage ~/.gitmessage 

# config files
cp ~/Repos/DotFiles/.zshrc ~/.zshrc 
cp ~/Repos/DotFiles/.bashrc ~/.bashrc 
cp ~/Repos/DotFiles/.bash_profile ~/.bash_profile 
cp ~/Repos/DotFiles/.tmux.conf ~/.tmux.conf 

# window manager
cp ~/Repos/DotFiles/.yabairc ~/.yabairc 
cp ~/Repos/DotFiles/.skhdrc ~/.skhdrc 

# vscode
mkdir ~/Library/Application\ Support/Code/User/
cp ~/Repos/DotFiles/vs-code/settings.json ~/Library/Application\ Support/Code/User/settings.json 
cp ~/Repos/DotFiles/vs-code/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json 

source ~/.zshrc
