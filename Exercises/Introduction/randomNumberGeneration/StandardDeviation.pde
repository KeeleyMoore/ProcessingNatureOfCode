Random generatorSD;
// A distribution of values that cluster around an average (referred to as the “mean”) is known as a “normal” distribution. 
// It is also called the Gaussian distribution.
// When you graph the distribution, you get something that looks like the following, informally known as a bell curve

class StandardDeviation {
  
  void setup() {
    size(640, 360);
    generatorSD = new Random();
  }
  
  void draw() {
    // Asking for a Gaussian random number. (Note nextGaussian() returns a double and must be converted to float.)
    float num = (float) generatorSD.nextGaussian();
    float sd = 60;
    float mean = 320;
    
    // Multiply by the standard deviation and add the mean.
    float x = sd * num + mean;
    
    noStroke();
    fill(255,10);
    ellipse(x,180,16,16);
  }
}
