game =
  gravity: 0.5
  running: false
  init: ->
    if not gfx.init()
      alert "Sorry, no canvas"
      return
    gfx.load -> game.reset()
  reset: ->
    @level = new Level levels[0]
    @player = new Player @level, 100, 200
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
    @level.update()
    @player.update()
  render: ->
    @level.render()
    @player.render()
