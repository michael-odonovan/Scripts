#!/bin/bash

session="webpack-ts"

tmux new-session -d -s $session

window=0
tmux rename-window -t $session:$window 'git'
# tmux send-keys -t $session:$window 'git fetch --prune --all' C-m

window=1
tmux new-window -t $session:$window -n 'vim'
# tmux send-keys -t $session:$window 'vim package.json'

window=2
tmux new-window -t $session:$window -n 'run'

window=3
tmux new-window -t $session:$window -n 'serve'
# tmux send-keys -t $session:$window 'npm run serve'

# tmux attach-session -t $session
