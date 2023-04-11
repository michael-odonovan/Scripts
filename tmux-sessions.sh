#!/bin/bash

tmux new-session -d -s 'nvim' -c ~/.config/nvim/

tmux new-session -d -s 'component-library' ~/comic-relief/component-library/

tmux new-session -d -s 'comic-relief' ~/comic-relief/comicrelief-contentful/

tmux new-session -d -s 'donate' ~/comic-relief/react-donation/

tmux new-session -d -s 'scratch'

