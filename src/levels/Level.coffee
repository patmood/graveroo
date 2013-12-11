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
          when "O"
            new Dirt()
          else new Block()


    @h = @map.length
    @w = @map[0].length
  update: ->
    @progress++

  render: ->
    # Render level blocks
    for row, y in @map
      for block, x in row
        block.render gfx, x * gfx.tileW - @progress, y * gfx.tileH

    # Render Gravity
    c = gfx.ctx
    c.fillStyle = "#c21303"
    c.font = "18pt helvetica"
    c.fillText @game.gravity, 700, 50

  topBlockAt: (x) ->
    xGrid = Math.floor (x + @progress) / gfx.tileW + 1
    for row, y in @map
      if row[xGrid] instanceof Dirt
        return y * gfx.tileH
    return gfx.h
