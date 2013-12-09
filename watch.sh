#!/bin/bash

xargs coffee -w -b -j script/main.js \
             -c << EOF
                src/levels/Level.coffee
                src/player.coffee
                src/keys.coffee
                src/gfx.coffee
                src/game.coffee
