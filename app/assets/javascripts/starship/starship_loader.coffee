class @StarShipLoader
  constructor: () ->

  preload: () ->


  create: () ->
    @.stage.backgroundColor = '#000'
    @.state.start('Preloader')