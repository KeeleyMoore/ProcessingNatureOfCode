// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Example 1-1: Bouncing Ball, no vectors
PVector location; //(100, 100);
PVector velocity; //(2.5, 2);
boolean forwards;

void setup() {
  size(800, 200, P3D);
  smooth();
  
  location = new PVector(100,100, -160);
  velocity = new PVector(2.5, 2, 2);
}

void draw() {
  background(255);
  
  // Add the current speed to the position.
  location.x = location.x + velocity.x;
  location.y = location.y + velocity.y;
  location.z = location.z + velocity.z;
  
  
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * - 1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * - 1;
  }
  if ((location.z > 0) || (location.z < - 160)) {
    velocity.z = velocity.z * - 1;
  }
  // println(velocity);
  
  //Display circle at x position
  noStroke();
  lights();
  translate(location.x, location.y, location.z);
  sphere(48);
}