# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready () ->
  game = new Phaser.Game(800,600, Phaser.CANVAS, 'gameContainer') 

  game.state.add("Boot", StarShipLoader)
  game.state.add("Preloader", StarShipPreLoader)
  game.state.add("StartMenu", StarShipStartMenu)
  game.state.add("Game", StarShipGame)
  game.state.start("Boot")
  