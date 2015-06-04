/**
 * Load and Display an OBJ Shape. 
 * 
 * The loadShape() command is used to read simple SVG (Scalable Vector Graphics)
 * files and OBJ (Object) files into a Processing sketch. This example loads an
 * OBJ file of a rocket and displays it to the screen. 
 */


PShape rocket;
PShape rock;
PShape rock2;
PImage sky;
float ry;
  
public void setup() {
  size(800, 500, P3D);
  sky = loadImage("night-sky-hd-wallpaper.jpg");
  rocket = loadShape("shipA_OBJ.obj");
  rock = loadShape("Stone_F_3.obj");
  rock2 = loadShape("Stone_Forest_1_LOD1.obj");
  
}

public void draw() {
  camera(width/4.0, height/2.0, (height/8.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 1, 0, 1, 0);
  background(sky);
  lights();
  
  translate(width/2, height/2 + 100, -200);
  rotateZ(PI);
  rotateY(2);
  shape(rocket);

}

public void moveRock(PShape rock){
  //xpos =  + 
  //translate(xpos,ypos,zpos);
}

public void createRock(){
  //float  rockXPos;
  float  rockYPos;
  //rockXPos = random(width - 750, width - 1);
  rockYPos = random(height - 450, height - 10);
  translate(width/2 + 200, rockYPos, -200);
  shape(rock);
}
