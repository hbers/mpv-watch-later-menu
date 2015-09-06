#!/bin/bash

cat $HOME/.config/mpv/watch_later/* | sed 's:.*/::' | grep 'avi\|mp4\|mkv' | sed '/./='  | sed '/./N; s/\n/) /' 

read -p $'\x0aWhat do you want to watch now? \x0a' m
sleep 1 && kill $$ &
setsid mpv --really-quiet "$(cat $HOME/.config/mpv/watch_later/* | grep 'avi\|mp4\|mkv' | sed "$m q;d" | sed 's/^..//')" ; exit 
