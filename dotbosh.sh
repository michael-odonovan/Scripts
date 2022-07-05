#!/bin/bash
# bash script to back up my dot files

# git
cp ~/.gitmessage ~/Repos/DotFiles/.gitmessage
cp ~/.gitconfig ~/Repos/DotFiles/.gitconfig

# other
cp ~/.zshrc ~/Repos/DotFiles/.zshrc
cp ~/.bashrc ~/Repos/DotFiles/.bashrc
cp ~/.bash_profile ~/Repos/DotFiles/.bash_profile
cp ~/.tmux.conf ~/Repos/DotFiles/.tmux.conf
cp ~/.config/gatsby/config.json ~/Repos/DotFiles/.config/gatsby/config.json


# window manager
cp ~/.yabairc ~/Repos/DotFiles/.yabairc
cp ~/.skhdrc ~/Repos/DotFiles/.skhdrc

# vscode
cp ~/Library/Application\ Support/Code/User/settings.json ~/Repos/DotFiles/vs-code/settings.json 
cp ~/Library/Application\ Support/Code/User/keybindings.json ~/Repos/DotFiles/vs-code/keybindings.json 

cd ~/Repos/DotFiles
git add -A
git commit -m "update"
git push
