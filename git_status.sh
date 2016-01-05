#!/bin/bash

INDEX=`git --git-dir="$HOME/.git-pub-dotfiles" --work-tree="$HOME" -c color.status=always status --short 2> /dev/null`

STAGED=$(echo -n "$INDEX" | grep -Ev '^\?\? ' | wc -l | tr -d " \t")
UNSTAGED=$(echo -n "$INDEX" | grep -E '^\?\? ' | wc -l | tr -d " \t")

if [ ! -z "$1" ]; then
  echo -n "$1 "
fi
  echo -e "\e[92m●\e[39m$STAGED \e[91m●\e[39m$UNSTAGED"
echo "$INDEX"
