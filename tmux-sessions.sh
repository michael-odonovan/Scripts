#!/bin/bash

# Session 0 ===============
session0="0_planning"
tmux new-session -d -s $session0 -c ~/repos/notes/planning/
tmux rename-window -t $session0:1 'todo'
tmux send-keys -t $session0:1 'v ~/repos/notes/planning/1.today-todo.md' C-m

# Session 1 ===============
session1="1_component-library"
tmux new-session -d -s $session1 -c ~/comic-relief/component-library/
tmux rename-window -t $session1:1 'server'
# tmux send-keys -t $session1:1 'yarn styleguide' C-m
tmux new-window -t $session1:2 -c ~/comic-relief/component-library/ -n 'nvim'
tmux send-keys -t $session1:2 'v .' C-m
tmux new-window -t $session1:3 -c ~/comic-relief/component-library/ -n 'testing'
tmux send-keys -t $session1:3 'v .' C-m
tmux select-window -t $session1:1

# Session 2 ===============
session2="2_comic-relief"
tmux new-session -d -s $session2 -c ~/comic-relief/comicrelief-contentful/
tmux rename-window -t $session2:1 'server'
# tmux send-keys -t $session2:1 'yd' C-m
tmux new-window -t $session2:2 -c ~/comic-relief/comicrelief-contentful/ -n 'nvim'
tmux send-keys -t $session2:2 'v .' C-m
tmux new-window -t $session2:3 -c ~/comic-relief/comicrelief-contentful/ -n 'testing'
tmux send-keys -t $session2:3 'v .' C-m
tmux select-window -t $session2:1

# Session 3 ===============
session3="3_donate"
tmux new-session -d -s $session3 -c ~/comic-relief/react-donation/
tmux rename-window -t $session3:1 'server'
# tmux send-keys -t $session3:1 'ys' C-m
tmux new-window -t $session3:2 -c ~/comic-relief/react-donation/ -n 'nvim'
tmux send-keys -t $session3:2 'v .' C-m
tmux new-window -t $session3:3 -c ~/comic-relief/react-donation/ -n 'testing'
tmux send-keys -t $session3:3 'v .' C-m
tmux select-window -t $session3:1

# Session 4 ===============
session4="4_nvim"
tmux new-session -d -s $session4 -c ~/.config/nvim/
tmux send-keys -t $session4 'v .' C-m
tmux select-window -t $session4:1

# Session 5 ===============
session5="5_scratch"
tmux new-session -d -s $session5 -c ~/
tmux select-window -t $session5:1


