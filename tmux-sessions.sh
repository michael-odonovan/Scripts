#!/bin/bash

TMUX_SESSION_1='neovim'
tmux new-session -d -s $TMUX_SESSION_1

TMUX_SESSION_2='component-library'
tmux new-session -d -s $TMUX_SESSION_2

TMUX_SESSION_3='comic-relief'
tmux new-session -d -s $TMUX_SESSION_3

TMUX_SESSION_4='donate'
tmux new-session -d -s $TMUX_SESSION_4

TMUX_SESSION_5='scratch'
tmux new-session -d -s $TMUX_SESSION_5

