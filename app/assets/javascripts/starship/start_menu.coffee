class @StarShipStartMenu
  constructor: () ->

  preload: () ->


  create: () ->
    text = "Start"
    style =
      font: "65px Arial", 
      fill: "#ff0044", 
      align: "center"

    
    start_text = @add.text(@world.centerX-300, 0, text, style);

    start_text.inputEnabled = true
    start_text.events.onInputDown.addOnce(@start_game, @)

  start_game: () ->
    @state.start('Game')


