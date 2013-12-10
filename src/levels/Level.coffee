class Level
  w: 0
  h: 0
  progress: 0
  constructor: (level, @game) ->
    @load level
  load: (level) ->
    asciiMap = (row.split "" for row in level.data.split "\n")
    @map = for row, y in asciiMap
      for col, x in row
        switch col
          when "O" then new Dirt()
          else new Block()


    @h = @map.length
    @w = @map[0].length
  update: ->
    @progress--

  render: ->
    # Render level blocks
    for row, y in @map
      for block, x in row
        block.render gfx, x * gfx.tileW + @progress, y * gfx.tileH

