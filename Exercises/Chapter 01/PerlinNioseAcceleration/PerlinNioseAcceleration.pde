// Exercise 1.6
// Referring back to the Introduction, implement acceleration according to Perlin noise.

Mover mover;

void setup() {
  size(300,300);
  mover = new Mover();
}

void draw() {
  background(255);
  mover.update();
  mover.checkEdges();
  mover.display();
}
