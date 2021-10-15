void game() {
 background(0);

  int i = 0;
  while (i < myObjects.size()) {
    GameObject myObj = myObjects.get(i);
    myObj.show();
    myObj.act();
    if (myObj.lives == 0) {
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
  //println(myObjects.size());
}


 
void gameclicks() {

}
