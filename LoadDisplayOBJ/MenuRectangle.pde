class Rectangle {
 
  int x, y, w, h;   // Pos & Size 
  String textRect="";  // shown in the button (if in use)
 
  // constructor
  Rectangle( int _x, int _y, int _w, int _h, String _text) {
    x=_x;
    y=_y;
    w=_w;
    h=_h;
    textRect=_text;
  } 
  
  public void outputRect() {
    drawRectText();
  } 
 
  void drawRectText() {
    if (!textRect.equals("")) {
      fill(255);
      textSize(36);     
      textAlign(CENTER); 
      text(textRect, x, y+(h/2), w, h);
    }
  } 
 
  boolean overRect() {
    if (mouseX>x && mouseX<x+w &&
      mouseY>y && mouseY<y+h)
    {
      return true;
    }
    else
    {
      return false;
    } // if else
  } // method 
  //
  void noFillOrLightColorDependingOnMouseOver() {
    // this method sets a light background color for
    // the button when mouse is over it
    if (overRect())
      fill(2, 255, 2, 42);
    else  
      noFill();
  } // method
  //
} // class
//
