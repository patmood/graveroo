game =
  running: false
  init: ->
    if not gfx.init()
      alert "Sorry, no canvas"
      return
    gfx.load -> game.reset()
  reset: ->
    @player = new Player(100, 200)
    if not @running
      @start()
      @tick()
  start: ->
    @running = true
    console.log "Starting game..."
  stop: ->
    @running = false
    console.log "Stopping game"
  tick: ->
    return if not @running
    gfx.clear()
    @update()
    @render()
    requestAnimationFrame ->
      game.tick()
  update: ->
    # Update the level
    @player.update()
  render: ->
    # Render the level first
    gfx.ctx.fillStyle = "#000"
    gfx.ctx.fillRect 0,0,gfx.w,gfx.h
    @player.render()
  gravity: 0.5
