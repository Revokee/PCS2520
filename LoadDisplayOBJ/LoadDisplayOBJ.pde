/******************************************************************************
 * Global variables declaration
 *
 ******************************************************************************/
// Define movement step constant
public static final float movementStep = 5.0;
public static final int endOfSystem = -100;
// create rocket object
Rocket rocket;
// create keyboard track array
boolean[] keys = new boolean[255];
// create background image container
PImage sky;
//Create Rock System
RockSystem rs;

/******************************************************************************
 * Processing main setup method
 *
 ******************************************************************************/

public void setup() {
  size(1280, 800, P3D);
  sky = loadImage("NewSky.jpg");
  //Stone_F_3.obj
  //rock = new Rock(width/2+600, height/2, -200, "Stone_Forest_1_LOD1.obj");
  rocket = new Rocket(width/2, height/2 + 100, 0, "shipA_OBJ.obj");
  rs = new RockSystem(10);
}

/******************************************************************************
 * Processing main draw method
 *
 ******************************************************************************/

public void draw() {
  background(sky);
  lights();
  
  updatePlayer();
  rocket.drawShape();
  
  rs.update();
  rs.display();
  rs.recreate();
  
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

