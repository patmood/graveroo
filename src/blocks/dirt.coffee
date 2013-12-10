class Dirt extends Block
  solid: true
  color: "#59a219"
  render: (gfx, x, y) ->
    gfx.drawTile @color, x, y
