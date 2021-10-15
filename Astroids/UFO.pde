class UFO extends GameObject {
  //instance variables
  int UbulletTimer;
  float vy;
  float vx;
  int UFOspawn;
  //constructor
  UFO() {

    //vy = myShip.location.y - location.y;
    //vx = myShip.location.x - location.x;
    UbulletTimer = 0;
    lives = 1;
    size = 100;

    //where the UFO will spawn code
    UFOspawn = int(random(0, 4));
    if (UFOspawn == 0 ) {
      location = new PVector (0, random(0, height));
      velocity = new PVector(2, 0);
      velocity.setMag(1.5);
    }
    if (UFOspawn == 1 ) {
      location = new PVector (width, random(0, height));
      velocity = new PVector(-2, 0);
      velocity.setMag(1.5);
    }
    if (UFOspawn == 2 ) {
      location = new PVector (random(0, width), 0);
      velocity = new PVector(0, 2);
      velocity.setMag(1.5);
    }
    if (UFOspawn == 3 ) {
      location = new PVector (random(0, width), height);
      velocity = new PVector(0, -2);
      velocity.setMag(1.5);
    }




  }

  void show() {

    fill(0);
    ellipse(location.x, location.y - 20, 35, 30);
    ellipse(location.x, location.y, 70, 40);
  }

  void act() {
    super.act();
    
    UbulletTimer ++;
    if (UbulletTimer >= 60) {
      vx = 5;
      vy = 5;
      
     myObjects.add(new ufoBullets(location.x, location.y, vx, vy));
    UbulletTimer = 0;
    }

    //UFO bullets despawning
    if (location.x < 0) lives = 0;
    if (location.x > width) lives = 0;
    if (location.y < 0) lives = 0;
    if (location.y > height) lives = 0; 
    
   
      
    
    }

    // bullet collision
  }
