class Balloon {
  PVector location;
  PVector velocity;
  PVector acceleration;
  int balloonSize;
  float halfBalloonSize;
  float topSpeed;
  
  Balloon(int _balloonSize) {
    balloonSize = _balloonSize;
    halfBalloonSize = _balloonSize / 2;
    acceleration = new PVector(0, 0);
    velocity = new PVector(0, 0);
    location = new PVector(random(width), random(height));
    topSpeed = 20;
  }
  
  public void update() {
    velocity.add(acceleration);
    location.add(velocity);
    
    velocity.limit(topSpeed);
    
    acceleration.mult(0);
    checkEdges();
  }
  
  public void render() {
    stroke(0);
    fill(134, 123, 275, 125);
    ellipse(location.x, location.y, balloonSize, balloonSize);
  }
  
  public void applyForce(PVector force) {
    acceleration.add(force);
  }
  
  void checkEdges() {
    // println(velocity);
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    
    if (location.y < halfBalloonSize - 1) {
      velocity.y *= -0.7;
      velocity.x *= 0.8;
      location.y = halfBalloonSize; 
    } else if (location.y > height - (halfBalloonSize - 1)) {
      velocity.y *= -0.5;
      velocity.x *= 0.8;
      location.y = height - halfBalloonSize; 
    }
  }
}
