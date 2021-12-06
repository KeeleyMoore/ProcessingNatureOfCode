class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float topSpeed;
  
  public Mover() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random( -2, 2),0);
    acceleration = new PVector(0.01, 0);
    topSpeed = 10;
  }
  
  void update() {
    velocity.limit(topSpeed);
    
    location.add(velocity);
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
  
  void speedUp() {
    velocity.add(acceleration);
  }
  
  void slowDown() {
    velocity.sub(acceleration);
  }
}
