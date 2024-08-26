#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2 and bar3
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar xworkspaces 2>&1 | tee -a /tmp/polybar1.log & disown
polybar xwindow 2>&1 | tee -a /tmp/polybar2.log & disown
polybar date 2>&1 | tee -a /tmp/polybar3.log & disown
polybar pulseaudio 2>&1 | tee -a /tmp/polybar4.log & disown
polybar battery 2>&1 | tee -a /tmp/polybar5.log & disown
polybar cpu 2>&1 | tee -a /tmp/polybar6.log & disown
polybar memory 2>&1 | tee -a /tmp/polybar7.log & disown
polybar filesystem 2>&1 | tee -a /tmp/polybar8.log & disown
polybar network 2>&1 | tee -a /tmp/polybar9.log & disown
echo "Bars launched..."