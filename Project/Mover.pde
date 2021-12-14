class Mover extends ObserveEdges {
  PVector velocity;
  public PVector acceleration;
  
  float topSpeed;
  
  public Mover(float _x, float _y) {
    super(_x, _y);
    velocity = new PVector(random( -2, 2), random( -2,2));
    // acceleration = new PVector(random( -0.005, 0.01), random( -0.5, 0.5));
    // acceleration = _acceleration;
    topSpeed = 10;
  }
  
  public void updateLocation() {
    velocity.add(acceleration);
    velocity.limit(topSpeed);
    
    location.add(velocity);
    checkEdges();
  }
}
