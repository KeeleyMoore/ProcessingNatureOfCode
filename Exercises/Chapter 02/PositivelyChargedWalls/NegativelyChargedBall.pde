class NegativelyChargedBall {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  PVector distance;
  
  float topSpeed;
  float mass;
  float massSizeScalar;
  
  int magneticRange;
  
  
  public NegativelyChargedBall(float m, float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    
    topSpeed = 10;
    mass = m;
    massSizeScalar = 16 * m;
    
    magneticRange = 30;
    
    distance = new PVector();
  }
  
  public void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
    
    acceleration.mult(0);
  }
  
  void calculateDistance() {
    if (location.x / 2 < width / 2) {
      distance.x = location.x - (width / 2);
    } else {
      distance.x = (width - massSizeScalar) - location.x;
    }
    
    if (location.y / 2 < height / 2) {
      distance.y = location.y - (height / 2);
    } else {
      distance.y = (height - massSizeScalar) - location.y;
    }
    println(distance.x);
    println(distance.y);
  }
  
  void update() {
    calculateDistance();
    applyForce(distance);
    
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    
    location.add(velocity);
    acceleration.mult(0);
  }
  
  
  void display() {
    stroke(0);
    fill(175, 125);
    ellipse(location.x, location.y, massSizeScalar, massSizeScalar);
  }
  
  public void checkEdges() {
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      location.x = 0;
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
