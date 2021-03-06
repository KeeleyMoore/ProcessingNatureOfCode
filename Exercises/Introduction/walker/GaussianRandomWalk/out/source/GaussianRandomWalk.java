/* autogenerated by Processing revision 1276 on 2021-10-09 */
import processing.core.*;
import processing.data.*;
import processing.event.*;
import processing.opengl.*;

import java.util.*;

import java.util.HashMap;
import java.util.ArrayList;
import java.io.File;
import java.io.BufferedReader;
import java.io.PrintWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.IOException;

public class GaussianRandomWalk extends PApplet {

// Exercise I.5
// A Gaussian random walk is defined as one in which the step size (how far the object moves in a given direction) 
// is generated with a normal distribution. Implement this variation of our random walk.
// Random generator;

Random generator;
Walker g1;
Walker g2;
Walker g3;
 public void setup() {
  /* size commented out by preprocessor */;
  frameRate(30);

  // Create a walker object
  g1 = new Walker();
  g2 = new Walker();
  g3 = new Walker();

  background(255);
}

 public void draw() {
  // background(255);
  // Run the walker object
  g1.step();
  g1.render(235,30,30, 170);
  g2.step();
  g2.render(30,235,30, 170);
  g3.step();
  g3.render(30,30,235, 170);
}
class Walker {
  int x;
  int y;
  
  Walker() {
    x = width / 2;
    y = height / 2;
    
    generator = new Random();
  }
  
   public void render(int r, int g, int b, int a) {
    stroke(r, g, b, a);
    point(x, y);
  }
  
   public void step() {
    // float stepValue = (float) generator.nextGaussian();
    // float stepx = int(random(2)) - stepValue;
    // float stepy = int(random(2)) - stepValue;
    
    //TODO:: create a branching version, where after X amount of steps,
    //       the dot will split into 2 different dots now going on their own path
    //       the dots colours should also split going in opposite directions,
    //       e.g. one will lose a lot of blue saturation and the other gain the same amount
    
    float stepValueX = (float) generator.nextGaussian() * 2;
    float stepValueY = (float) generator.nextGaussian() * 2;
    float stepx = PApplet.parseInt(random(2)) - stepValueX;
    float stepy = PApplet.parseInt(random(2)) - stepValueY;
    
    x += stepx;
    y += stepy;
  }
}


  public void settings() { size(400, 400); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "GaussianRandomWalk" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
