gfx =
  init: ->
    canvas = document.getElementById("game")
    @ctx = canvas?.getContext? "2d"
    return false if not @ctx
    @w = canvas.width = 800
    @h = canvas.height = 400
    true

  clear: ->
    @ctx.clearRect 0, 0, @w, @h
  load: (onload) ->
    onload()

