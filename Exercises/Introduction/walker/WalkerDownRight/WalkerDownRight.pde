// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Walker w;

void setup() {
  size(800, 640);
  frameRate(30);
  w = new Walker();
  background(255);
}

void draw() {
  // Run the walker object
  w.walk();
  w.render();
}
