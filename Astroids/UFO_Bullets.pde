class ufoBullets extends GameObject{

//insatnce variables
int timer;
//constructor

ufoBullets(float x, float y) {
  location = new PVector(x, y);
 velocity = new PVector(myShip.location.x - location.x, myShip.location.y - location.y);
   velocity.setMag(10);
timer = 60;
lives = 1;
  size = 10;
   
}


void show() {
stroke(255);
    noFill();
    ellipse(location.x, location.y, size, size);
}

void act() {
   location.add(velocity);

    timer--;
    if (timer == 0) {
          lives = 0;
    }


 //Ship collision
    int sc = 0;
    while (sc < myObjects.size()) {
       GameObject myObj = myObjects.get(sc);
       if (myObj instanceof Ship) {
          if(dist(location.x, location.y, myObj.location.x, myObj.location.y) < size/2 + 13 && myShip.imtimer < 0) {
            lives = 0;
            myObj.lives --;
            myShip.imtimer = 120;
            
          }
       }
       
       sc ++;
    }

}
}
