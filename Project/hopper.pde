Random randomeGen;

class Hopper extends ObserveEdges {
  public Hopper(float _x, float _y) {
    super(_x, _y);
    randomeGen = new Random();
  }
  
  void render() {
    stroke(255, 176, 100);
    ellipse(location.x, location.y, 4, 4);
  }
  
  void step() {
    float stepValueX = (float) randomeGen.nextGaussian() * 3;
    float stepValueY = (float) randomeGen.nextGaussian() * 3;
    float stepx = int(random(1)) - stepValueX;
    float stepy = int(random(1)) - stepValueY;
    
    location.x += stepx;
    location.y += stepy;
    checkEdges();
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
