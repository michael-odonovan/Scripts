#!/bin/bash

# Session 0 ===============
session0="0_planning"
tmux new-session -d -s $session0 -c ~/repos/notes/planning/

tmux rename-window -t $session0:1 'todo'

tmux send-keys -t $session0:1 'cd ~/repos/notes/ && v ./planning/1.today-todo.md' C-m


# Session 1 ===============
session1="1_component-library"
tmux new-session -d -s $session1 -c ~/comic-relief/component-library/
tmux rename-window -t $session1:1 'Code'
tmux send-keys -t $session1:1 'v .' C-m

tmux new-window -t $session1:2 -c ~/comic-relief/component-library/ -n 'Lazygit'

tmux new-window -t $session1:3 -c ~/comic-relief/component-library/ -n 'Server'

tmux select-window -t $session1:1


# Session 2 ===============
session2="2_comic-relief"
tmux new-session -d -s $session2 -c ~/comic-relief/comicrelief-contentful/
tmux rename-window -t $session2:1 'Code'
tmux send-keys -t $session2:1 'v .' C-m

tmux new-window -t $session2:2 -c ~/comic-relief/comicrelief-contentful/ -n 'Lazygit'

tmux new-window -t $session2:3 -c ~/comic-relief/comicrelief-contentful/ -n 'Server'

tmux select-window -t $session2:1


# Session 3 ===============
session3="3_donate"
tmux new-session -d -s $session3 -c ~/comic-relief/react-donation/
tmux rename-window -t $session3:1 'Code'
tmux send-keys -t $session2:1 'v .' C-m

tmux new-window -t $session3:2 -c ~/comic-relief/react-donation/ -n 'Lazygit'

tmux new-window -t $session3:3 -c ~/comic-relief/react-donation/ -n 'Server'

tmux select-window -t $session3:1


# Session 4 ===============
session4="4_neovim"
tmux new-session -d -s $session4 -c ~/.config/nvim/

tmux send-keys -t $session4 'v .' C-m

tmux select-window -t $session4:1

# Session 5 ===============
session5="5_my-learning-site"
tmux new-session -d -s $session5 -c ~/repos/my-learning-site/
tmux rename-window -t $session5:1 'Server'

tmux new-window -t $session5:2 -c ~/repos/my-learning-site -n 'Code'
tmux send-keys -t $session5:2 'v .' C-m

tmux select-window -t $session5:1

# Session 6 ===============
session6="6_cutshed"
tmux new-session -d -s $session6 -c ~/elizhelp/cut-shed-app/
tmux rename-window -t $session6:1 'Server'

tmux new-window -t $session6:2 -c ~/elizhelp/cut-shed-app/ -n 'Code'
tmux send-keys -t $session6:2 'v .' C-m

tmux new-window -t $session6:3 -c ~/elizhelp/cut-shed-app/ -n 'Lazygit'
tmux send-keys -t $session6:3 'v .' C-m

tmux select-window -t $session6:1

# Session 7 ===============
session7="7_contact_us_rebuild"
tmux new-session -d -s $session7 -c ~/comic-relief/contact-us-2023/
tmux rename-window -t $session7:1 'Code'
tmux send-keys -t $session7:1 'v .' C-m

tmux new-window -t $session7:2 -c ~/comic-relief/contact-us-2023/ -n 'Lazygit'

tmux new-window -t $session7:3 -c ~/comic-relief/contact-us-2023/ -n 'Server'

tmux new-window -t $session7:4 -c ~/comic-relief/contact-us-old/ -n 'Old version'

tmux select-window -t $session7:1


# Session 8 ===============
session8="8_scratch"
tmux new-session -d -s $session8 -c ~/

tmux select-window -t $session8:1



session8="8_react_payments"
tmux new-session -d -s $session8 -c ~/comic-relief/react-payments/
tmux rename-window -t $session8:1 'Code'
tmux send-keys -t $session8:1 'v .' C-m

tmux new-window -t $session8:2 -c ~/comic-relief/react-payments/ -n 'Lazygit'

tmux new-window -t $session8:3 -c ~/comic-relief/react-payments/ -n 'Server'

tmux select-window -t $session8:1
