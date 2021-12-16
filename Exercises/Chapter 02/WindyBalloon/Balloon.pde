class Balloon {
  PVector location;
  PVector velocity;
  PVector acceleration;
  int balloonSize;
  float halfBalloonSize;
  
  Balloon(int _balloonSize) {
    balloonSize = _balloonSize;
    halfBalloonSize = _balloonSize / 2;
    acceleration = new PVector(0, 0);
    velocity = new PVector(0, 0);
    location = new PVector(width / 2, height / 2);
  }
  
  public void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
    checkEdges();
  }
  
  public void render() {
    stroke(0);
    fill(134, 123, 275);
    ellipse(location.x, location.y, balloonSize, balloonSize);
  }
  
  public void applyForce(PVector force) {
    acceleration.add(force);
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    // TODO: Apply a bounce effect ( 
    // Simple: maximum amount of bounces before location.y check value set to equal half of size
    // Advanced: Catch velocity value before its reset upon hitting the ceiling 
    //           and use that to create a counter force which is reduced expotentially on each bounce
    // )
    if (location.y < halfBalloonSize - 1) {
      velocity.mult(0);
      location.y = halfBalloonSize; 
    } else if (location.y > height - (halfBalloonSize - 1)) {
      location.y = height - halfBalloonSize; 
    }
  }
}
