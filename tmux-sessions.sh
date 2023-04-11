#!/bin/bash

tmux new-session -d -s 0_planning -c ~/repos/notes/planning/

tmux new-session -d -s 1_component-library -c ~/comic-relief/component-library/
tmux new-window -d
tmux new-window -d
tmux new-window -d

tmux new-session -d -s 2_comic-relief -c ~/comic-relief/comicrelief-contentful/
tmux new-window -d
tmux new-window -d
tmux new-window -d

tmux new-session -d -s 3_donate -c ~/comic-relief/react-donation/
tmux new-window -d
tmux new-window -d
tmux new-window -d

tmux new-session -d -s 4_nvim -c ~/.config/nvim/

tmux new-session -d -s 5_scratch -c ~/

