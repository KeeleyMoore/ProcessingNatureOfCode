// Exercise I.5
// A Gaussian random walk is defined as one in which the step size (how far the object moves in a given direction) 
// is generated with a normal distribution. Implement this variation of our random walk.
// Random generator;
import java.util.*;
Random generator;
Walker g1;
Walker g2;
Walker g3;
void setup() {
  size(400,400);
  frameRate(30);

  // Create a walker object
  g1 = new Walker();
  g2 = new Walker();
  g3 = new Walker();

  background(255);
}

void draw() {
  // background(255);
  // Run the walker object
  g1.step();
  g1.render(235,30,30, 170);
  g2.step();
  g2.render(30,235,30, 170);
  g3.step();
  g3.render(30,30,235, 170);
}
