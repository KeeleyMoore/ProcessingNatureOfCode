/* autogenerated by Processing revision 1276 on 2021-10-09 */
import processing.core.*;
import processing.data.*;
import processing.event.*;
import processing.opengl.*;

import java.util.HashMap;
import java.util.ArrayList;
import java.io.File;
import java.io.BufferedReader;
import java.io.PrintWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.IOException;

public class WalkerDownRight extends PApplet {

// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Walker w;

 public void setup() {
  /* size commented out by preprocessor */;
  frameRate(30);
  w = new Walker();
  background(255);
}

 public void draw() {
  // Run the walker object
  w.walk();
  w.render();
}

class Walker {
  int x, y;
  
  Walker() {
    x = width / 2;
    y = height / 2;
  }
  
   public void render() {
    stroke(0);
    point(x, y);
  }
  
   public void walk() {
    int stepx = PApplet.parseInt(random(4)) - 1;
    int stepy = PApplet.parseInt(random(4)) - 1;
    
    x += stepx;
    y += stepy;
  };
};


  public void settings() { size(800, 640); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "WalkerDownRight" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
