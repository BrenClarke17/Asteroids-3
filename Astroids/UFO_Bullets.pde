class ufoBullets extends GameObject{

//insatnce variables
int timer;
//constructor

ufoBullets(float x, float y, float vx, float vy) {
  location = new PVector(x, y);
  println(vx, vy);
    velocity = new PVector(vx, vy);
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
}
}
