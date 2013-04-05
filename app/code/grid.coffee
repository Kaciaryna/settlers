class window.Grid
  SIZE = 60
  IMAGESIZE = 50
  constructor: (@width, @height) ->

  draw: ->
    @paper = Raphael('settlers', SIZE*@width+5, SIZE*@height+5)

    for y in [1..SIZE*@height] by SIZE
      for x in [1..SIZE*@width] by SIZE
        @paper.rect(x, y, SIZE, SIZE)

  calculate_position: (position) ->
    pos = {}
    pos.x = position.x * SIZE + 5
    pos.y = position.y * SIZE + 5
    pos

  locate: (building) ->
    posiotion = @calculate_position(building.coordinates)
    image = @paper.image(building.image_path, posiotion.x, posiotion.y, IMAGESIZE, IMAGESIZE);
    buildingRender = new BuildingRender
    image.click ->
      buildingRender.create(building)