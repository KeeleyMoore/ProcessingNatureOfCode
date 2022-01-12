class NegativelyChargedBall {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  PVector magneticForce;
  
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
    
    magneticForce = new PVector();
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }
  
  void calculateMagneticForce() {
    magneticForce.x = (width / 2) - location.x;
    // if (location.x < width / 2) {
    // magneticForce.x = (width / 2) - location.x;
    // } else {
    //   // magneticForce.x = location.x - width;
    //   magneticForce.x = ((width / 2) - location.x);
    // }
    
    magneticForce.y = (height / 2 - location.y);
    // if (location.y < height / 2) {
    // magneticForce.y = (location.y - height) * - 1;
    // } else {
    // magneticForce.y = (height - location.y);
    // }
    
    magneticForce.mult(0.001);
  }
  
  void update() {
    calculateMagneticForce();
    println(magneticForce.y);
    // println(magneticForce.x);
    applyForce(magneticForce);
    
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
