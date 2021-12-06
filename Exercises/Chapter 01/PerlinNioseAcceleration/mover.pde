class Mover {
  PVector location;
  PVector velocity;
  float acceleration, topSpeed, accelerationIncrease, step = 0.005;
  
  public Mover() {
    location = new PVector(random(width), height / 2);
    velocity = new PVector(0,0);
    acceleration = 0.0;
    
    topSpeed = 10;
  }
  
  void update() {
    velocity.limit(topSpeed);
    accelerationIncrease = noise(acceleration);
    velocity.add(new PVector(noise(accelerationIncrease), 0));
    
    acceleration += step;
    
    location.add(velocity);
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, 0 + (accelerationIncrease * 400), 6, 6);
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
