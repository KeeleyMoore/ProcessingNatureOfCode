// Exercise 1.8
// Try implementing the above example with a variable magnitude of acceleration, stronger when it is either closer or farther away.

// A Mover object
Mover mover;

void setup() {
  size(640,360);
  mover = new Mover(); 
}

void draw() {
  background(255);
  
  // Update the position
  mover.update();
  // Display the Mover
  mover.display(); 
}
