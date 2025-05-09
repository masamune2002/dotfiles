#!/bin/sh

# Set Session Name
SESSION="twistapp"
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

# Only create tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]
then
    # Start New Session with our name
    tmux new-session -d -s $SESSION

    # Name first Pane and start twistapp and server
    tmux rename-window -t 0 'servers'
    tmux send 'cd ~/Code/Twist_and_Stack/ && make twistapp-run' ENTER
    tmux split-window
    tmux send 'cd ~/Code/Twist_and_Stack/ && make server-run' ENTER

    # Create and setup pane for NeoVim
    tmux new-window -t $SESSION:1 -n 'nvim'
    tmux send 'cd ~/Code/Twist_and_Stack/ && nvim' ENTER
    tmux send ':Startify' ENTER

    tmux new-window -t $SESSION:2 -n 'bash'
fi

# Attach Session, on the Main window
tmux attach-session -t $SESSION:1
