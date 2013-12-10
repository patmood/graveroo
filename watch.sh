#!/bin/bash

xargs coffee -w -b -j script/main.js \
             -c << EOF
                src/levels/levels.coffee
                src/levels/Level.coffee
                src/blocks/Block.coffee
                src/blocks/dirt.coffee
                src/player.coffee
                src/keys.coffee
                src/gfx.coffee
                src/game.coffee
