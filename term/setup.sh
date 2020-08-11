#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

tic -o ~/.terminfo xterm-256color.terminfo.txt
tic -o ~/.terminfo tmux-256color.terminfo.txt
tic -o ~/.terminfo tmux.terminfo.txt
