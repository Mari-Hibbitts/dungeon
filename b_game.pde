void game(){


background(0);
drawRoom();
drawGameObjects();
darknessDraw();


//pause
if (pause == true){
mode = PAUSE;
}



}

void drawRoom(){

image(room, -5, -5, width+5, height+5);

//draw exits
northRoom = map.get(myHero.roomX, myHero.roomY-1);
eastRoom = map.get(myHero.roomX + 1, myHero.roomY);
southRoom = map.get(myHero.roomX, myHero.roomY+1);
westRoom = map.get(myHero.roomX-1, myHero.roomY);

//draw doors at exits
noStroke();
fill(black);
if (northRoom != #FFFFFF){
image(doorN, 337, 32);
}

if (eastRoom != #FFFFFF){
image(doorE, 702, 235);
}

if (southRoom != #FFFFFF){
image(doorS,337, 518);
}

if (westRoom != #FFFFFF){
image(doorW,50, 235);
}

image(floor, 93, 80, 610, 440);

}

void drawGameObjects(){
int i = 0;
  while (i<myObjects.size()) {
    GameObjects myObj = myObjects.get(i);
    myObj.show();
    myObj.act();
    if (myObj.hp == 0) {
      myObjects.remove(i);
    } else {
      i++;
    }
  }

}

void darknessDraw(){
rectMode(CORNER);
int i = 0;
while (i < darkness.size()){
darkness.get(i).show();
i++;

}
rectMode (CENTER);
}
