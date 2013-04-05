do () ->
  return unless TEST
  buildingRender = new BuildingRender

  fakeBuilding = name: 'foo', people_capacity: '2'
  realOutput = buildingRender.create fakeBuilding

  expectedOutput = "<div class='building'><h2>foo</h2><div class='humans'><span class='human'></span><span class='human'></span></div></div>"

  console.error 'Fuck you!' if realOutput != expectedOutput
