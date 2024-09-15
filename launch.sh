#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2 and bar3
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar xworkspaces 2>&1 | tee -a /tmp/polybar1.log & disown
polybar datentime 2>&1 | tee -a /tmp/polybar3.log & disown
polybar battery 2>&1 | tee -a /tmp/polybar5.log & disown
polybar network 2>&1 | tee -a /tmp/polybar9.log & disown
echo "Bars launched..."