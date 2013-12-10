class Level
  w: 0
  h: 0
  progress: 0
  constructor: (level, @game) ->
    @load level
  load: (level) ->
    @asciiMap = (row.split "" for row in level.data.split "\n")
    # @map = for row, y in asciiMap
    #   for col, x in row
    #     switch col
    #       when "O"
    #         gfx.drawTile "#59a219", x*24, y*24
    #         console.log "Huzzah"

    # @h = @map.length
    # @w = @map[0].length
  update: ->
    # gfx.drawTile "#59a219", 800-@progress, 380, 5
    # @progress++
    for row, y in @asciiMap
      for col, x in row
        switch col
          when "O"
            gfx.drawTile "#59a219", x*18, y*18


  render: ->

