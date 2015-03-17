class @StarShipGame
  constructor: () ->

  create: () ->
    

    @physics.startSystem(Phaser.Physics.ARCADE);

    @startship = @add.sprite(400, 300, 'starship');
    @startship.anchor.set(0.5);

    
    @physics.enable(@startship, Phaser.Physics.ARCADE);

    @startship.body.drag.set(100);
    @startship.body.maxVelocity.set(200);

    @cursors = @input.keyboard.createCursorKeys();


  update: () ->
    if (@cursors.up.isDown)
        @physics.arcade.accelerationFromRotation(@startship.rotation, 200, @startship.body.acceleration)
    else
        @startship.body.acceleration.set(0) 

    if (@cursors.left.isDown)
      @startship.body.angularVelocity = -300;
    
    else if (@cursors.right.isDown)
      @startship.body.angularVelocity = 300;
    else
      @startship.body.angularVelocity = 0;
    


