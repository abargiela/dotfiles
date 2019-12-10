#!/bin/bash
TMUX_OPENED_SESSIONS=$(tmux ls | wc -l | awk '{print $1}')

if [[ $TMUX_OPENED_SESSIONS > 1 ]]; then
    clear
    tmux list-sessions -F '#S'
    echo "Type in which session connect:"
    read SESSION_NAME
    tmux attach -t $SESSION_NAME
elif [[ $TMUX_OPENED_SESSIONS < 1 ]]; then
    clear
    echo -e 'You do not have any TMUX active sessions.'
    echo -e 'Please give a name and hit enter to create one.'
    read NO_SESSIONS_YET
    tmux new -s $NO_SESSIONS_YET
else
    clear
    tmux attach
fi
