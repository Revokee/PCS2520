public class Rock {
  float x,y,z,r, velX,velY;
  PShape shape;
  
  public Rock (float x, float y, float z, PShape shape, float velX) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.r = rockRadius;
    this.velX = velX;
    this.shape = shape;
  }
  
  void drawShape () {
    //rockYPos = random(height - 450, height - 10);
    pushMatrix();
      translate(this.x, this.y, this.z);
      rotateZ(PI);
      rotateY(PI/2);
      shape(this.shape);
    popMatrix();
  }
  
  // Is it off the screen, or its lifespan is over?
  boolean isDead() {
    if (this.x < endOfSystem || this.y > height || this.y < 0) {
      return true;
    } 
    else {
      return false;
    }
  }
  
  /*void move (float dx, float dy, float dz){
    // create temp new position
    float X = this.x + dx;
    float Y = this.y + dy;
    float Z = this.z + dz;
    // check if new position is inside canvas boundaries
    //if (isInsideCanvas(X, Y, Z)){
    if (true){
      // commit changes
      this.x = X;
      this.y = Y;
      this.z = Z;
    }
    else {
      // discard changes and exit
    }
  }*/
  
  void update() {
    this.x = this.x + velX;
  }
  
  void reset() {
    this.x = width;
    this.y = random(height - 800, height); 
  } 
}
