class Ship extends GameObject {
  //instance variables

  PVector direction;
  int shotTimer, threshold, imtimer, imthreshold;

  //constructor (s)
  Ship() {
    lives = 3;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector(0, -0.1);
    shotTimer = 0;
    threshold = 15;
    imtimer = 0;
    imthreshold = 180;
  }

  //Behaviour functions

  void show() {  
    
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    fill(255);
    stroke(255);
    rect(-25, 8, 20, 10);
    rect(-25, -8, 20, 10);
    triangle(-25, 25, 25, 0, -25, -25);


    popMatrix();
  }

  void act() {

    super.act();

    if (velocity.mag() > 5) { 
      velocity.setMag(5);
    }
    shotTimer++;

    if (upkey) {
      velocity.add(direction);
      myObjects.add(new Fire());
    }
    if (downkey) velocity.sub(direction);
    if (leftkey) direction.rotate( -radians(5) );
    if (rightkey) direction.rotate( radians(5) );
    if (spacekey && shotTimer >= threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }
 

if(imtimer >= imthreshold) {

  
  imtimer++;
} else { 

}


}
}
