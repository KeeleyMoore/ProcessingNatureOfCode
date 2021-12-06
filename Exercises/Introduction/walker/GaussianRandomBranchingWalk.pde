// Exercise I.5
// A Gaussian random walk is defined as one in which the step size (how far the object moves in a given direction) 
// is generated with a normal distribution. Implement this variation of our random walk.
Random generator;
class GaussianRandomBranchingWalk {
  int x;
  int y;
  
  GaussianRandomBranchingWalk() {
    x = width / 2;
    y = height / 2;
    
    generator = new Random();
  }
  
  void render(int r, int g, int b, int a) {
    stroke(r, g, b, a);
    point(x, y);
  }
  
  void step() {
    // float stepValue = (float) generator.nextGaussian();
    // float stepx = int(random(2)) - stepValue;
    // float stepy = int(random(2)) - stepValue;
    
    //TODO:: create a branching version, where after X amount of steps,
    //       the dot will split into 2 different dots now going on their own path
    //       the dots colours should also split going in opposite directions,
    //       e.g. one will lose a lot of blue saturation and the other gain the same amount
    
    float stepValueX = (float) generator.nextGaussian() * 2;
    float stepValueY = (float) generator.nextGaussian() * 2;
    float stepx = int(random(2)) - stepValueX;
    float stepy = int(random(2)) - stepValueY;
    
    x += stepx;
    y += stepy;
  }
}
