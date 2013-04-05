class window.BuildingRender

  create: (house) ->

    document.querySelector(".results").innerHTML = "<div class='building' id=#{house.name}#{house.id}><h2>#{house.name}</h2><div class='human'></div></div>"