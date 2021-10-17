void gameover() {
  //win 
  background(0, 255, 0);
  fill(0);
  textSize(100);
  text("WINNER", 400, 150);
  
  fill(255);
rect(400, 400, 300, 100);
fill(0);
textSize(25);
textFont(introfont);
text("restart", 400, 400);


//lose code
if(myShip.lives == 0) {
background(red);
textFont(introfont);
textSize(100);
text("U LOSE", 400, 150);
fill(255);
rect(400, 400, 300, 100);
fill(0);
textSize(25);
textFont(introfont);
text("restart", 400, 400);
} else { 

}

}
void gameoverclicks() {
  if (mouseX > 250 && mouseX < 550 && mouseY > 400 && mouseY < 450 ) {
    mode = INTRO;
     myShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip); 
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
myObjects.add(new UFO());
alives = 21;
rspawn = 600;

  
}
}
