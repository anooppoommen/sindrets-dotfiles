#!/bin/bash
target="$HOME/Pictures/screenshots/`date +'%Y-%m-%d-%H%M%S'`_maim.png"
maim -i `xdotool getactivewindow` | convert - \( +clone -background black -shadow 94x12+0+6 \) +swap -background none -layers merge +repage "$target"

notify-send "Screenshot saved to: '$target'" -i "$target"