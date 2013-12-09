class Player
  x: 0
  y: 0
  w: 18
  h: 24
  speed: 0
  constructor: (@x, @y) ->
    @falling = true
  move: (xo, yo) ->
    # Determine the new position
    # Check for obstacles

    # Air or ground?
    if @y >= gfx.h - @h
      @falling = false
      console.log "STOP"

    if @falling
      @speed -= gravity
      yo -= @speed


    # Update the position
    @x += xo
    @y += yo

  update: ->
    # Position differential
    xo = yo = 0

    @move(xo, yo)

  render: ->
    # Placeholder image/rectange
    gfx.ctx.fillStyle = "#fff"
    gfx.ctx.fillRect @x,@y,@w,@h
