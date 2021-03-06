class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float topSpeed;
  
  public Mover() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random( -2, 2), random( -2,2));
    acceleration = new PVector(random( -0.005, 0.01), random( -0.5, 0.5));
    topSpeed = 10;
  }
  
  void update() {
    velocity.add(acceleration);
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
}