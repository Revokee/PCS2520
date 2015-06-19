/******************************************************************************
 * Global variables declaration
 *
 ******************************************************************************/
// Define movement step constant
public static final float movementStep = 5.0;
public static final int endOfSystem = -100;
public static final float rockRadius = 30.0;
public static final float rockectRadius = 20.0;
// create rocket object
Rocket rocket;
// create keyboard track array
boolean[] keys = new boolean[255];
// create background image container
PImage sky;
//Create Rock System
RockSystem rs;
//Game Flow Control
public static final int PLAYING = 0;
public static final int MAIN_MENU = 1;
public static final int GAME_OVER = 2;
public static final int HELP = 3;

int gameState;

// Titel
final String strConstTitel = "Space Rush";

// Rectangles as buttons for main menu
Rectangle rectButtonBoard1;
Rectangle rectButtonBoard2;
Rectangle rectButtonBoard3;

final String [] menuText =
{
  "Play ",
  "Help ",
  "Quit "
};

// the initial Main Menu
int textXPos;
int[] textYPos = {
  230,
  390,
  550,
  700
};

/******************************************************************************
 * Processing main setup method
 *
 ******************************************************************************/

public void setup() {
  //frameRate(100);
  size(1280, 800, P3D);
  //Reduzir a qualidade da imagem de fundo
  //sky = loadImage("NewSky.jpg");
  gameInit();
}

/******************************************************************************
 * Processing main draw method
 *
 ******************************************************************************/

public void draw() {
  switch(gameState){
    case(PLAYING):
      background(51);
      lights();
      updatePlayer();
      rocket.drawShape();
      rs.update();
      rs.display();
      rs.recreate();
      collisionDetectionSystemRunAll();
      break;
    case(MAIN_MENU):
      handleStateShowWelcomeScreen();
      break;
    case(GAME_OVER):
      // handle game over
      break;
  }
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

/******************************************************************************
 * gameInit method
 * Set the game's starting variables in a separate function which can then 
 * be called again at game over to reset all necessary variables
 ******************************************************************************/

void gameInit(){
  // define values for class Rectangle
  textXPos = width/2-250;
  // define objects of class Rectangle
  rectButtonBoard1 = new Rectangle(textXPos, textYPos[0], 500, 145, menuText[0]);
  rectButtonBoard2 = new Rectangle(textXPos, textYPos[1], 500, 145, menuText[1]);
  rectButtonBoard3 = new Rectangle(textXPos, textYPos[2], 500, 145, menuText[2]); 

  gameState = MAIN_MENU;
}

/******************************************************************************
 * loadGame method
 * called when player select Start in main menu
 ******************************************************************************/
void loadGame(){
  rocket = new Rocket(width/2, height/2 + 100, 0, "shipA_OBJ.obj");
  rs = new RockSystem(15);
}
