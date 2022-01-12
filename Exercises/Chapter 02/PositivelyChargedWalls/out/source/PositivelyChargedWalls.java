/* autogenerated by Processing revision 1276 on 2022-01-12 */
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

public class PositivelyChargedWalls extends PApplet {



NegativelyChargedBall[] balls = new NegativelyChargedBall[20];

 public void setup() {
  /* size commented out by preprocessor */;
  background(255);
  
  for (int i = 0; i < balls.length; i++) {
    float size = random(0.5f, 10);
    float halfSize = size / 2;
    balls[i] = new NegativelyChargedBall(size, random(0, width), random(0, height));
  }
}


 public void draw() {
  background(255);
  for (int i = 0; i < balls.length; i++) {
    balls[i].update();
    balls[i].checkEdges();
    balls[i].display();
  }
}
class NegativelyChargedBall {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  PVector magneticForce;
  
  float topSpeed;
  float mass;
  float massSizeScalar;
  
  int magneticRange;
  
  
  public NegativelyChargedBall(float m, float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    
    topSpeed = 10;
    mass = m;
    massSizeScalar = 16 * m;
    
    magneticRange = 30;
    
    magneticForce = new PVector();
  }
  
   public void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }
  
   public void calculateMagneticForce() {
    magneticForce.x = (width / 2) - location.x;
    // if (location.x < width / 2) {
    // } else {
    //   // magneticForce.x = location.x - width;
    //   magneticForce.x = ((width / 2) - location.x);
    // }
    
      magneticForce.y = (height / 2 - location.y);
    if (location.y < height / 2) {
      // magneticForce.y = (location.y - height) * - 1;
    } else {
      // println("l",(location.y / 2) - height);
      // magneticForce.y = (height - location.y);
      
    }
    
    magneticForce.mult(0.001f);
    
  }
  
   public void update() {
    calculateMagneticForce();
    println(magneticForce.y);
    // println(magneticForce.x);
    applyForce(magneticForce);
    
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    
    location.add(velocity);
    acceleration.mult(0);
  }
  
   public void display() {
    stroke(0);
    fill(175, 125);
    ellipse(location.x, location.y, massSizeScalar, massSizeScalar);
  }
  
  public void checkEdges() {
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }
    
    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    } //    else if (location.y < 0) {
    //   location.y = 0;
    // }
  }
}


  public void settings() { size(1400, 1000); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "PositivelyChargedWalls" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
