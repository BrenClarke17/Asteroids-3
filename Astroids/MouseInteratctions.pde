void keyPressed() {
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (keyCode ==' ') spacekey = true;
  if (key == ENTER) enterkey = true;
}

void mouseReleased() {
  //clicks stuff
  if (mode == INTRO) {
    introclicks();
  } else if (mode == GAME) {
    gameclicks();
  } else if (mode == GAMEOVER) {
    gameoverclicks();
  } else if (mode == PAUSE) {
    pauseclicks();
  }
}


void keyReleased() {



  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (keyCode ==' ') spacekey = false;
  if (key == ENTER) enterkey = false;
}
