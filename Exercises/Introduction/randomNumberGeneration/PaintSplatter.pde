// Exercise I.4
// Consider a simulation of paint splatter drawn as a collection of colored dots.
// Most of the paint clusters around a central location, but some dots do splatter out towards the edges. 
// Can you use a normal distribution of random numbers to generate the locations of the dots? 
// Can you also use a normal distribution of random numbers to generate a color palette?

Random generatorPS;


class PaintSplatter {
  
  PaintSplatter() {
    generatorPS = new Random();
  }
  
  void setup() {
    size(640, 360);
  }
  
  void draw() {
    // Asking for a Gaussian random number. (Note nextGaussian() returns a double and must be converted to float.)
    float numx = (float) generatorPS.nextGaussian();
    float numy = (float) generatorPS.nextGaussian();
    
    // float red = (float) generatorPS.nextGaussian() * 10;
    // float green = (float) generatorPS.nextGaussian() * 10;
    // float blue = (float) generatorPS.nextGaussian() * 10;
    
    float sdx = 60;
    float sdy = 50;
    float meanx = 290;
    float meany = 160;
    
    // Multiply by the standard deviation and add the mean.
    float x = sdx * numx + meanx;
    float y = sdy * numy + meany;
    
    noStroke();
    // fill(255,10);
    // fill(y * red,x * green,(x + y) * blue, 100);
    // fill((y * red) / 2,(x * red) / 2,((x - y) * red) / 2, 100);
    
    fill(y,x,(x + y) / 2, 100);
    ellipse(x,y,16,16);
  }
}
