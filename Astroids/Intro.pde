void intro() {
background(0);
//gif 
image(igif[f], 0, 0, width*2, height*2);
f = f + 1;
if (f == nframes) f = 0;
fill(255);
textAlign(CENTER, CENTER);
textFont(introfont);
textSize(75);
text("ASTEROIDS", 400, 200);
rect(400, 400, 300, 100);
textSize(50);
fill(0);
text("START", 400, 400);

}


void introclicks() {
 if (mouseX > 250 && mouseX < 550 && mouseY > 350 && mouseY < 450 ) {
    mode = GAME;
}
}
