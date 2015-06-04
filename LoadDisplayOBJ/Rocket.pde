public class Rocket {
  float x,y,z;
  PShape shape;
  
  public Rocket (float x, float y, float z, String shapeName) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.shape = loadShape(shapeName);
  }
  
  void drawShape () {
    pushMatrix();
    translate(this.x, this.y, this.z);
    rotateZ(PI);
    rotateY(PI/2);
    shape(this.shape);
    popMatrix();
  }
  
  void move (float dx, float dy, float dz){
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
  }
   
}
