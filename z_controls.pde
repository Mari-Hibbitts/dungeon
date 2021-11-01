void keyPressed() {

  if (keyCode == UP)  upkey = true;
  if (keyCode == DOWN)  downkey = true;
  if (keyCode == LEFT)  leftkey = true;
  if (keyCode == RIGHT)  rightkey = true;
  if (keyCode == ' ')    spacekey = true;
  if (key == 'p' || key == 'P') pause = true;
  if (key == 'a' || key == 'A') select = true;
}

void keyReleased() {

  if (keyCode == UP)  upkey = false;
  if (keyCode == DOWN)  downkey = false;
  if (keyCode == LEFT)  leftkey = false;
  if (keyCode == RIGHT)  rightkey = false;
  if (keyCode == ' ')    spacekey = false;
  if (key == 'p' || key == 'P') pause = false;
  if (key == 'a' || key == 'A') select = false;
}
