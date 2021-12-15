// Exercise 1.8
// Try implementing the above example with a variable magnitude of acceleration, stronger when it is either closer or farther away.

// A Mover object
// Mover mover;
Mover[] movers = new Mover[20];


void setup() {
  size(860,860);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(width),random(height));
  }
  // mover = new Mover(width/2, height/ 2); 
}

void draw() {
  background(255);
  
  for (int i = 0; i < movers.length; i++) {
    movers[i].update();
    movers[i].display();
  }
  
  // Update the position
  // mover.update();
  
  // Display the Mover
  // mover.display(); 
}
