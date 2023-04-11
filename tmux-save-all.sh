#!/bin/bash
for i in $(tmux list-sessions -F "#S"); do
    tmux save-session -t $i > ~/.tmux/saved-session-$i
done
