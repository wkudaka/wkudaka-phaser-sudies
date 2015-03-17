class @StarShipPreLoader
  constructor: () ->
    @ready = false
  preload: () ->
    @load.image('starship', '/assets/starship.png')
    #@TODO: set a preload bar

  create: () ->
    # player = @.add.sprite(400, 500, 'starship');

  update: () ->
    @ready = true
    @state.start("StartMenu")
    
    