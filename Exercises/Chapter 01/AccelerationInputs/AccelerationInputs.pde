// Exercise 1.5
// Create a simulation of a car (or runner) that accelerates when you press the up key and brakes when you press the down key.

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


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      mover.speedUp();
    } else if (keyCode == DOWN) {
      mover.slowDown();
    }
  }
}
