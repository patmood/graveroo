class Player
  x: 0
  y: 0
  w: 18
  h: 24
  speed: -10
  constructor: (@level, @x, @y) ->
    @falling = true
    @onGround = false
    @surface = gfx.h

  move: (xo, yo) ->
    # Determine the new position
    # Check for surface
    @updateSurface()

    # Air or ground?
    if (@y >= @surface - @h) and not @onGround
      @falling = false
      @onGround = true
      @land()

    if @falling
      @onGround = false
      @speed += game.gravity
      yo += @speed

    # Check for collisions


    # Update the position
    @x += xo
    @y += yo

  land: ->
    setTimeout (=> @jump()), 100
  jump: ->
    @falling = true
    @speed = -20

  update: ->
    # Position differential
    xo = yo = 0

    @move(xo, yo)
  render: ->
    # Placeholder image/rectange
    gfx.ctx.fillStyle = "#a26a2d"
    gfx.ctx.fillRect @x,@y,@w,@h
  updateSurface: ->
    @surface = @level.topBlockAt @x


