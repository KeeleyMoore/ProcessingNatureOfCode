class BoatMan extends Mover {
  float noiseStepX;
  float noiseStepY;
  
  public BoatMan(float _x, float _y) {
    super(_x, _y);
    noiseStepX = 0;
    noiseStepY = 10;
    acceleration = new PVector(0, 0);
  }
  
  void update() {
    // TODO:: figure out how to slow down the boatMan and give it more tigher wiggles (like it does at the start of the sketch currently)
    acceleration.x += random( -1, 1) * map(noise(noiseStepX), 0, 1, 0, 4);
    acceleration.y += random( -1, 1) * map(noise(noiseStepY), 0, 1, 0, 4);
    
    noiseStepX += 0.01;
    noiseStepY += 0.01;
    updateLocation();
  }
  
  void render() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 10, 10);
  }
}
