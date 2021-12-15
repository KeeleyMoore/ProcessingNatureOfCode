// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {
  
  // The Mover tracks position, velocity, and acceleration 
  PVector position;
  PVector velocity;
  PVector acceleration;
  // The Mover's maximum speed
  float topspeed;
  boolean returning;
  
  Mover(float x, float y) {
    // Start in the center
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    topspeed = 10;
  }
  
  void update() {
    
    // Compute a vector that points from position to mouse
    PVector mouse = new PVector(mouseX,mouseY);
    PVector direction = PVector.sub(mouse,position);
    direction.normalize();
    
    // Set magnitude of acceleration
    float distance = position.dist(mouse) / 5000;
    float mag = 0.5 - distance;
    direction.setMag(mag);
    
    // Velocity changes according to acceleration
    velocity.add(direction);
    // Limit the velocity by topspeed
    velocity.limit(topspeed);
    // position changes by velocity
    position.add(velocity);
    recenter(distance);
  }
  
  void recenter(float distance) {
    if (distance > 2 && !returning) {
      velocity.mult(0);
      returning = true;
    } else if (distance < 2 && !returning) {
      returning = false;
    }
  }
  
  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(position.x,position.y,48,48);
  }
  
}
