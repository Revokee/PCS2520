/******************************************************************************
 * File: Rocket.pde
 * Author:
 * Description: Contains Rocket class
 ******************************************************************************
 * Rocket Class
 * Variables:
 * Methods:
 *
 ******************************************************************************/
public class Rocket {
  float x,y,z,r;
  PShape shape;
  
  public Rocket (float x, float y, float z, String shapeName) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.r = rockectRadius;
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
  
  Boolean isInsideCanvas(float x, float y, float z){
    // test new position relative to canvas
    // canvas is window size relative to position (0,0,0)
    if (x < 0 || x > width)       return false;
    else if (y < 0 || y > height) return false;
    else                          return true;
  }
  
  void move (float dx, float dy, float dz){
    // create temp new position
    float X = this.x + dx;
    float Y = this.y + dy;
    float Z = this.z + dz;
    // check if new position is inside canvas boundaries
    if (isInsideCanvas(X, Y, Z)){
      // animate camera
      cameraAnimation(dx, dy, dz);
      // commit changes
      this.x = X;
      this.y = Y;
      this.z = Z;
    }
    else {
      // discard changes and exit
    }
  }
  
  void cameraAnimation(float dx, float dy, float dz){
    // camera animation
    if (dx != 0){
      // accelerate camera in X axis
      cameraEyeX += dx;
    }
    if (dy != 0){
      // accelerate camera in Y axis
      //cameraEyeY += dy;
    }
    if (dz != 0){
      // accelerate camera in Z axis
      cameraEyeZ += dz;
    }
  }
   
}
