void pause() {
  fill(255);
  textAlign(CENTER, CENTER);
 textSize(50);
  textFont(introfont);
text("PAUSED", 400, 300);
}
 void pauseclicks() {
 if (mouseX > 0 && mouseX < 50 && mouseY > 0 && mouseY < 50 ) {
   mode = GAME;
   }
 }
