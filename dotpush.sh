#!/bin/bash
# bash script to back up my dot files

# git
cp ~/.gitmessage ~/repos/dotfiles/.gitmessage
cp ~/.gitconfig ~/repos/dotfiles/.gitconfig

# other
cp ~/.zshrc ~/repos/dotfiles/.zshrc
cp ~/.bashrc ~/repos/dotfiles/.bashrc
cp ~/.bash_profile ~/repos/dotfiles/.bash_profile
cp ~/.tmux.conf ~/repos/dotfiles/.tmux.conf
cp ~/.config/kitty/kitty.conf ~/repos/dotfiles/kitty.conf
cp ~/.config/alacritty/alacritty.yml ~/repos/dotfiles/alacritty.yml
cp ~/.config/gatsby/config.json ~/repos/dotfiles/.config/gatsby/config.json
cp ~/.vimrc ~/repos/dotfiles/.vimrc


# window manager
cp ~/.yabairc ~/repos/dotfiles/.yabairc
cp ~/.skhdrc ~/repos/dotfiles/.skhdrc

# vscode
cp ~/Library/Application\ Support/Code/User/settings.json ~/repos/dotfiles/vs-code/settings.json
cp ~/Library/Application\ Support/Code/User/keybindings.json ~/repos/dotfiles/vs-code/keybindings.json

cd ~/repos/dotfiles
git add -A
git commit -m "update"
git push
