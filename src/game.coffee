game =
  running: false
  init: ->
    if not gfx.init()
      alert "Sorry, no canvas"
      return
    gfx.load -> game.reset()
  reset: ->
    @player = new Player
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
    @player.update()
  render: ->
    gfx.ctx.fillStyle = "#000"
    gfx.ctx.fillRect 0,0,gfx.w,gfx.h
    @player.render()
