buildingId = 0

class window.Building
  occupants = {}
  constructor: (@name, @people_capacity, @image_path) ->
    @id = buildingId++

  come: (occupant) ->
    occupants[occupant.id] =  occupant

  leave: (occupant) ->
    delete occupants[occupant.id]
