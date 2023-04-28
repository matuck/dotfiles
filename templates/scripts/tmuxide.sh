#!/usr/bin/env bash

tmux start-server
sess_name=$(basename $PWD)
echo "$sess_name"

tmux list-sessions | grep "^${sess_name}:"; already_running=$?

if [[ $already_running -eq 0 ]]; then
  tmux attach-session -t "$sess_name"
else
  tmux new-session -d -s $sess_name -n "$sess_name"_main

  # debugger pane
  tmux split-window -t $sess_name:"$sess_name"_main.0 -h -p 25

  #liaison pane
  tmux split-window -t $sess_name:"$sess_name"_main.1 -v -p 30

  tmux select-pane -t  $sess_name:"$sess_name"_main.0
  tmux send-keys -t $sess_name:"$sess_name"_main.0 "vim "

  exec tmux attach -t $sess_name
fi
