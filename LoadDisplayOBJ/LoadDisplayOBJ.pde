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
  //frameRate(100);
  size(1280, 800, P3D);
  //Reduzir a qualidade da imagem de fundo
  //sky = loadImage("NewSky.jpg");
  rocket = new Rocket(width/2, height/2 + 100, 0, "shipA_OBJ.obj");
  rs = new RockSystem(15);
}

/******************************************************************************
 * Processing main draw method
 *
 ******************************************************************************/

public void draw() {
  background(51);
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

