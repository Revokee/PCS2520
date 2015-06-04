/******************************************************************************
 *
 *
 *
 *
 ******************************************************************************/

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

/******************************************************************************
 * Processing main setup method
 *
 ******************************************************************************/
public void setup() {
  size(800, 500, P3D);
  sky = loadImage("night-sky-hd-wallpaper.jpg");
  rocket = new Rocket(width/2, height/2 + 100, -200, "shipA_OBJ.obj");
  camera(width/4.0, height/2.0, (height/8.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 1, 0, 1, 0);
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

