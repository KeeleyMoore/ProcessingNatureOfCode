class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float topSpeed;
  float mass;
  
  int massSizeScalar;
  
  public Mover(float m, float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    topSpeed = 10;
    mass = m;
    massSizeScalar = 16;
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    
    location.add(velocity);
  }
  
  public void applyForce(PVector force) {
    f = new PVector.div(force, mass);
    acceleration.add(f);
    
    acceleration.mult(0);
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, mass * massSizeScalar, mass * massSizeScalar);
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
      velocity.x *= -1;
    } else if (location.x < 0) {
      location.x = width;
      velocity.x *= -1;
    }
    
    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    } //    else if (location.y < 0) {
    //   location.y = 0;
    // }
  }
}
