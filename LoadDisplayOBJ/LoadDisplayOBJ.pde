/******************************************************************************
 * Global variables declaration
 *
 ******************************************************************************/
// Define movement step constant
public static final float movementStep = 5.0;
// create rocket object
Rocket rocket;
// create keyboard track array
boolean[] keys = new boolean[255];
// create background image container
PImage sky;
Rock newRock;
float ry;
ArrayList<Rock> rocks;
int x = 0;

/******************************************************************************
 * Processing main setup method
 *
 ******************************************************************************/

public void setup() {
  size(800, 500, P3D);
  sky = loadImage("night-sky-hd-wallpaper.jpg");
  //Stone_F_3.obj
  //rock = new Rock(width/2+600, height/2, -200, "Stone_Forest_1_LOD1.obj");
  rocket = new Rocket(width/2, height/2 + 100, -200, "shipA_OBJ.obj");
  rocks = new ArrayList<Rock>(); 
  rocks.add(new Rock(width/2+1200, random(height - 450, height - 10), -200, "Stone_Forest_1_LOD1.obj"));
  while(x < 3){
    newRock = new Rock(width/2+1200, random(height - 800, height), -200, "Stone_Forest_1_LOD1.obj");
    for (int i = 0; i < rocks.size(); i++) {
      if(rocks.get(i).y <= newRock.y + 100){
      
      }
      else{
        rocks.add(newRock);
        x = x + 1;
      }
    }
  }
}

/******************************************************************************
 * Processing main draw method
 *
 ******************************************************************************/

public void draw() {
  background(sky);
  lights();

  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).drawShape();
  }
  //rock.drawShape();

  updatePlayer();
  rocket.drawShape();

}

/******************************************************************************
 * Keyboard keypressed/keyreleased event handlers
 ******************************************************************************/
void keyPressed() {
  keys[keyCode] = true;
}

void keyReleased() {
  keys[keyCode] = false;
}

/******************************************************************************
 * updatePlayer method
 * resolve new player position and status
 ******************************************************************************/
void updatePlayer() {
  float dx = 0, dy = 0, dz = 0;  
  if(keys[UP])    { dy -= movementStep; }
  if(keys[DOWN])  { dy += movementStep; }
  if(keys[LEFT])  { dx -= movementStep; }
  if(keys[RIGHT]) { dx += movementStep; }
  rocket.move(dx, dy, dz);
}

