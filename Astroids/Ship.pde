class Ship extends GameObject {
  //instance variables

  PVector direction;
  int shotTimer, threshold, imtimer, imthreshold;
  int tptimer;
  

  //constructor (s)
  Ship() {
    lives = 3;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector(0, -0.1);
    shotTimer = 0;
    threshold = 15;
    imtimer = 120;
    imthreshold = 180;
    tptimer = 200;
  }

  //Behaviour functions

  void show() {

    pushMatrix();
    translate(location.x, location.y);
    
    rotate(direction.heading());
    if (imtimer >= 0) {
      
      fill(red);
      stroke(red);
      rect(-25, 8, 20, 10);
      rect(-25, -8, 20, 10);
      triangle(-25, 25, 25, 0, -25, -25);
    }
    if (imtimer < 0) {
      fill(255);
      stroke(255);
      rect(-25, 8, 20, 10);
      rect(-25, -8, 20, 10);
      triangle(-25, 25, 25, 0, -25, -25);
    }
    popMatrix();
    fill(255);
text("lives"+lives , 400, 50);
fill(255);
rect(100, 550, 200, 50);
stroke(0);
fill(0);
rect(100, 550, -tptimer, 50);

 
  tptimer--;
  }
 
   
     
    


  void act() {

    super.act();

tptimer --;
    






if (lives == 0) {
mode = GAMEOVER;
}
    if (velocity.mag() > 5) {
      velocity.setMag(5);
    }
    shotTimer++;
    imtimer --;

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
    if (enterkey && tptimer <= 0) {
      imtimer = 120;
      location = new PVector(random(0, width), random(0, height));
  }
  
  if (tptimer <= 0) {
  tptimer = 0;
  }
  if (enterkey) {
  tptimer = 200;
  }
    if (imtimer >= imthreshold) {


      imtimer++;
    } else {
    }
  }
}
