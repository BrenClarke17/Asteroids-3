void game() {
 background(0);
  rect(25, 25, 50, 50);
  int i = 0;
  while (i < myObjects.size()) {
    GameObject myObj = myObjects.get(i);
    myObj.show();
    myObj.act();
    if (myObj.lives == 0) {
      myObjects.remove(i);
    } else if(mode == GAMEOVER) {
    myObjects.remove(i);
    } else {
      i++;
    }
  }
if (rspawn == 0) {
myObjects.add(new UFO());
rspawn = 1000;
}
rspawn--;
  
}


 
void gameclicks() {
   if (mouseX > 0 && mouseX < 50 && mouseY > 0 && mouseY < 50 ) {
   mode = PAUSE;
   }

}
