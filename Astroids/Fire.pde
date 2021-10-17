class Fire extends GameObject {

  int t; // transparency
  PVector nudge;
  Fire() {    //contructor 
  lives = 1;
  size = 10;
 //location new PVector (myShip.location.x, myShip.location.y);
 location = myShip.location.copy();
 nudge = myShip.direction.copy();  
  nudge.rotate(PI);
  nudge.setMag(40);
  location.add(nudge);
 
  velocity = myShip.direction.copy();
  velocity.rotate(PI + random(-0.5, 0.5)); // 180 degrees
  velocity.setMag(5);
  t = 255;
  }
  
  void show() {
    noStroke();
   fill(red, t);
    square(location.x, location.y, size);
  
  }
  
  void act() {
  super.act();
  t = t - 10;
  
  if (t <= 0) lives = 0;
  
  
  }
  
  

} // end of class fire
