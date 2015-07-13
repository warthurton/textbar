#!/bin/bash

BAR='▮'
# [ -d /Volumes/TimeMachine ] && echo -n "🔵" || echo -n "⚪️"
# [ -d /Volumes/Downloads ] && echo -n "🔵" || echo -n "⚪️"
[ -d /Volumes/TimeMachine ] && printf "\e[32m$BAR" || printf "\e[1;30m$BAR"
[ -d /Volumes/Downloads ] && printf "\e[32m$BAR" || printf "\e[1;30m$BAR"
printf "\e[1;30m"