import java.util.*;
class Walker {
  int x;
  int y;

  Walker() {
    x = width / 2;
    y = height / 2;
    
    generator = new Random();
  }
  
  
  void render() {
    stroke(130, 70, 90);
    point(x, y);
  }
  
  void step() {
    float stepSize = stepSize(0,10);
    
    float stepx = random( -stepSize,stepSize);
    float stepy = random( -stepSize,stepSize);
    
    x += stepx;
    y += stepy;
  }
  
  float stepSize(int start, int end) {
    while(true) {
      float stepSize = random(start,end);
      float stepSquared = sqrt(stepSize);
      float probability = random(0, stepSquared);
      
      if (stepSize > probability) {
        return stepSize;
      }
    }
  }
}
