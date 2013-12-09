#!/bin/bash

xargs coffee -w -b -j script/main.js \
             -c << EOF
                src/player.coffee
                src/gfx.coffee
                src/game.coffee
