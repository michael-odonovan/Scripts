#!/bin/bash
for i in $(ls ~/.tmux/saved-session-*); do
    session_name=$(echo $i | sed 's/^.*-//')
    tmux new-session -d -s $session_name
    tmux source-file $i
done
