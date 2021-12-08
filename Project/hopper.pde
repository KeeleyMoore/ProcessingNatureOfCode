Random randomeGen;

class Hopper {
  PVector location;
  
  public Hopper(float _x, float _y) {
    location = new PVector(_x, _y);
    randomeGen = new Random();
  }
  
  void render() {
    stroke(255, 176, 100);
    point(location.x, location.y);
  }
  
  void step() {
    float stepValueX = (float) randomeGen.nextGaussian() * 4;
    float stepValueY = (float) randomeGen.nextGaussian() * 4;
    float stepx = int(random(1)) - stepValueX;
    float stepy = int(random(1)) - stepValueY;
    
    location.x += stepx;
    location.y += stepy;
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
