#!/usr/bin/env bash

sh ~/scripts/actions/stop.sh

authserver="~/core/acore.sh run-authserver"
worldserver="~/core/acore.sh run-worldserver"

authserver_session="auth-session"
worldserver_session="world-session"

if tmux new-session -d -s $worldserver_session; then
    echo "Created worldserver session: $worldserver_session"
    if tmux send-keys -t $worldserver_session "$worldserver" C-m; then
        echo "Executed \"$worldserver\" inside $worldserver_session"
        echo "You can attach to $worldserver_session and check the result using \"tmux attach -t $worldserver_session\""
    else
        echo "Error when executing \"$worldserver\" inside $worldserver_session"
    fi
else
    echo "Error when trying to create worldserver session: $worldserver_session"
fi

echo "Waiting for world to load before starting auth..."
sleep 60

if tmux new-session -d -s $authserver_session; then
    echo "Created authserver session: $authserver_session"
    if tmux send-keys -t $authserver_session "$authserver" C-m; then
        echo "Executed \"$authserver\" inside $authserver_session"
        echo "You can attach to $authserver_session and check the result using \"tmux attach -t $authserver_session\""
    else
        echo "Error when executing \"$authserver\" inside $authserver_session"
    fi
else
    echo "Error when trying to create authserver session: $authserver_session"
fi