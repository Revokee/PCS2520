//shows the main menu with the main game buttons
void handleStateShowWelcomeScreen() {
  // headline
  fill(0,102,153); 
  textSize(64);
  textAlign(CENTER);
  text (strConstTitel, width/2, 100);
  
  rectButtonBoard1.outputRect();
  rectButtonBoard2.outputRect();
  rectButtonBoard3.outputRect();
}


void handleStatePlay() {

}

//
void handleStateAfterAGame() {
  // After a game:
  // Wait for mousePressed
  // to go to the Welcome Screen again.
  background(0);
  // headline
  fill(255); 
  textSize(32);
  textAlign(CENTER);
  text (strConstTitel, width/2, 40);
  //
  // intro text
  textSize(19);
  textAlign(LEFT);
  textSize(19);
  text("Thank you for playing!",
  textXPos, 230);
  text("Press mouse button.", 500, height-30);
  //
}