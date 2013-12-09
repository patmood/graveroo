keys =
  up: false
  down: false
  space: false

  reset: ->
    @up = @down = @space = false

  trigger: (keyCode, isDown) ->
    switch keyCode
      when 38 then @up = isDown
      when 40 then @down = isDown
      when 32 then @space = isDown

    console.log game.gravity
    game.gravity = 0.3 if @up
    game.gravity = 1.5 if @down
    game.gravity = 0.5 if @space


# Event Listeners
document.addEventListener "keydown", (e) ->
  keys.trigger e.keyCode, true

document.addEventListener "keyup", (e) ->
  keys.trigger e.keyCode, false
