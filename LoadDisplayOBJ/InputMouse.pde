// Inputs Mouse
 
// each state has an own mousePressed routine
void mousePressed() {
  // depending on the state choose mousePressed routine
  switch (gameState) {
  case MAIN_MENU:
    mousePressedStateWelcomeScreen();
    break;
  case PLAYING:
    break;
  case GAME_OVER:
    gameState = MAIN_MENU;
    break; 
  default:
    println("Unknown State (Error 18 in tab InputMouse): "
      + gameState+ ".");
    exit();
    break;
  } 
} 
 
// ----------------------------------------------------------------------------
 
void mousePressedStateWelcomeScreen() {
  // Mouse pressed in state Welcome Screen / Main Screen.
  // Evaluate three main buttons.
  if (rectButtonBoard1.overRect()) { 
    loadGame();
    gameState = PLAYING;
  }
  else if (rectButtonBoard2.overRect()) {
    gameState = HELP;
  }
  else if (rectButtonBoard3.overRect()) {  
    gameState = GAME_OVER;
  } 
  else {
    // do nothing
  }
}

void loadGame(){
  rocket = new Rocket(width/2, height/2 + 100, 0, "shipA_OBJ.obj");
  rs = new RockSystem(15);
}
