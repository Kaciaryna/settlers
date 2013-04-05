

OBJECTS =
  Home: window.Home
  Mill: window.Mill


#map = [
#  [null, OBJECTS.Home],
#  [null, null]
#]
#


home = new Home({x: 1, y: 0})
woodCutter = new WoodCutter({x: 5, y: 4})
sawmill = new Sawmill({x: 8, y: 1})



grid = new Grid(10, 10)
grid.draw()
grid.locate(home)
grid.locate(woodCutter)
grid.locate(sawmill)