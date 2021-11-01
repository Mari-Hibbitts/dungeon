class Hero extends GameObjects{
float speed;


 Hero(){
   super();
   speed = 5;
   roomX = 1;
   roomY = 1;

 
 }
 
 void show(){
fill(green);
stroke(black);
strokeWeight(2);
circle(loc.x, loc.y, 40);
 
 }
 
 void act(){
   super.act();
  
 if (upkey) vel.y = -speed;
 if(downkey) vel.y = speed;
 if (leftkey) vel.x = -speed;
  if (rightkey) vel.x = speed;
  
  if (vel.mag() > speed) vel.setMag(speed);
  
  if (!upkey && !downkey) vel.y = vel.y*0.9;
if (!leftkey && !rightkey) vel.x = vel.x*0.9;

//moving around rooms
//northroom
if (northRoom!=#FFFFFF && loc.x > 371 && loc.x < 428 && loc.y == 103){
roomY--;
loc = new PVector (width/2,496);
}

if (eastRoom!=#FFFFFF && loc.y > 262 && loc.y < 327 && loc.x == 687){
roomX++;
loc = new PVector (112,height/2);
}

if (southRoom!=#FFFFFF && loc.x > 375 && loc.x < 432 && loc.y == 496){
println(roomY);
roomY++;
loc = new PVector (width/2,103);
}

if (westRoom!=#FFFFFF && loc.y > 270 && loc.y < 328 && loc.x == 112){
roomX--;
loc = new PVector (687,height/2);
}
 
 
 }




}
