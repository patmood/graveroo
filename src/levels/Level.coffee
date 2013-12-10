class Level

  progress: 0
  constructor: (level, @game) ->
    @load level
  load: (level) ->
    asciiMap = (row.split "" for row in level.data.split "\n")
  update: ->
    gfx.drawTile "#59a219", 800-@progress, 380, 5
    @progress++
  render: ->

