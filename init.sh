#!/usr/bin/env zsh

if ! type "stow" > /dev/null; then
    xterm -e pacaur -S stow
fi
for f in $(find ./ -maxdepth 1 -type d | grep -Ev '.git|config' | cut -d '/' -f 2 )
    stow -R $f -t ~/

stow -R config -t ~/.config
