class Asteroid extends GameObject {
 int imtimer, imthreshold;

  Asteroid() {
    location = new PVector (random(0, width), random(0, height));
    velocity = new PVector (0, 1);
    velocity.rotate( random(0, TWO_PI) );
    size = 100; 
    lives = 1;
  }
  Asteroid(int s, float x, float y) {
    lives = 1;
    location = new PVector (x, y);
    velocity = new PVector (0, 1);
    velocity.rotate( random(0, TWO_PI) );
    size = s;
  }


  void show() {
    noFill();
    stroke(255);
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();
//asteroid breaking
    int i = 0;
    while (i < myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {
        if ( dist(location.x, location.y, myObj.location.x, myObj.location.y) <= size/2 + myObj.size/2) {
          myObj.lives = 0;
          lives = 0;
          alives = alives - 1;
                      //partcle code
                       int p = 0;
          while (p < 15) {
            myObjects.add(new particles(location.x, location.y));
            p++;
          }
         
         
          if ( size > 25) {
            // breaking asteroids 2
            myObjects.add(new Asteroid(size/2, location.x, location.y));
            myObjects.add(new Asteroid(size/2, location.x, location.y));
          }
        }
      }
      i++;
    }
    if (alives == 0) {
      mode = GAMEOVER;
    }
  
int o = 0;
    while (o < myObjects.size()) {
       GameObject myObj = myObjects.get(o);
       if (myObj instanceof Ship) {
          if(dist(location.x, location.y, myObj.location.x, myObj.location.y) < size/2 + 10 && myShip.imtimer < 0) {
            myObj.lives --;
            myShip.imtimer = 60;
          }
       }
       
       o ++;

}
}
}
