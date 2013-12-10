game =
  gravity: 0.5
  running: false
  init: ->
    if not gfx.init()
      alert "Sorry, no canvas"
      return
    gfx.load -> game.reset()
  reset: ->
    @player = new Player(100, 200)
    @level = new Level
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
