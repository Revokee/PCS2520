Rocket rocket;
Rock newRock;
PImage sky;
float ry;
ArrayList<Rock> rocks;
int x = 0;

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
      
      }else{
        rocks.add(newRock);
        x = x + 1;
      }
     }
   }
  //rocks.add(new Rock(random(width - 750, height - 10), random(height - 450, height - 10), -200, "Stone_Forest_1_LOD1.obj"));
  //rocks.add(new Rock(random(width - 750, height - 10), random(height - 450, height - 10), -200, "Stone_Forest_1_LOD1.obj"));
  //rocks.add(new Rock(random(width - 750, height - 10), random(height - 450, height - 10), -200, "Stone_Forest_1_LOD1.obj"));
  //rocks.add()
}
public void draw() {
  camera(width/4.0, height/2.0, (height/8.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 1, 0, 1, 0);
  background(sky);
  lights();
  rocket.drawShape();
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).drawShape();
  }
  //rock.drawShape();
}

public void moveRock(PShape rock){
  //xpos =  + 
  //translate(xpos,ypos,zpos);
}

public void createRock(){
  //float  rockXPos;
  //float  rockYPos;
  //rockXPos = random(width - 750, width - 1);
  //rockYPos = random(height - 450, height - 10);
  //translate(width/2 + 200, rockYPos, -200);
  //shape(rock);

  //translate(width/2, height/2 + 100, -200);
  //rotateZ(PI);
  //rotateY(ry);
  //shape(rocket);
  //rocket.drawShape();
  //ry += 0.02;

}
