//Brennan Clarke
//Asteroids

boolean upkey, downkey, leftkey, rightkey, spacekey, enterkey;
Ship myShip;
ArrayList <GameObject> myObjects;
int alives;
PImage[] igif;
int nframes;
int f; 
int rspawn;
// mode Framework
int mode;
final int INTRO = 0;
final int GAME  =  1;
final int PAUSE =  2;
final int GAMEOVER = 3;
color red = #FF0303;


//font
PFont introfont;

void setup() {
 mode = INTRO;
  size(800, 600);
  introfont = createFont("04B_30__.TTF", 50);
  rectMode(CENTER);
  imageMode(CENTER);
  myShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip); 
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
myObjects.add(new UFO());
  rectMode(CENTER);
  upkey = downkey = leftkey = rightkey = spacekey = false;
alives = 21;
//intro gif code
nframes = 6;
igif = new PImage[nframes];
int i = 0;

while ( i < nframes) {
igif[i] = loadImage("frame_"+i+"_delay-0.5s.gif");
  i++;
//UFO spawn code
rspawn = 600;
}

}

void draw() {
// mode framework
if (mode == INTRO) {
  intro();
} else if (mode == GAME) {
game();
} else if (mode == PAUSE) {
pause();
} else if (mode == GAMEOVER) {
gameover();
} else {
  println("Erorror: Mode = " + mode);

}
  
  
}
