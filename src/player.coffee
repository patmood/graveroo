class Player
  x: 0
  y: 0
  w: 18
  h: 24
  constructor: ->
    @inAir = false
  move: ->
    # Determinte the new position
    # Check for obstacles

    # Update the position
    @x += xo
    @y += yo

  update: ->
    # Position differential
    xo = yo = 0

    # Work out if falling or not

    @move(xo, yo)

  render: ->
    # Placeholder image/rectange
    gfx.ctx.fillStyle = "#fff"
    # gfx.ctx.fillRect @x,@y,@w,@h
    gfx.ctx.fillRect 100,100,100,100
  move: ->
