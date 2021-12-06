class Walkers {
  PVector location;
  int x, y, a;
  float r, g, b;
  int count = 0;
  
  Walkers subwalker;
  
  Walkers(float ir, float ig, float ib, int ia, float ix, float iy) {
    // println(ir, ig, ib, ia, ix, iy);
    location =  new PVector(ix, iy);
    // x = ix;
    // y = iy;
    r = ir;
    g = ig;
    b = ib;
    a = ia;
    
    generator = new Random();
  }
  
  void step() {
    stroke(r, g, b, a);
    point(location.x, location.y);
    
    count++;
    if (count == 50) {
      float ir = map(location.x, 0, width, 0, 255);
      float ig = map(location.y, 0, height, 0, 255);
      float ib = map(location.y, 0,(width + height) / 2, 0, 255);
      subwalker = new Walkers(ir,ig,ib,a,location.x,location.y);
    } 
    
    if (subwalker != null) {
      subwalker.step();
    }
    
    float stepValueX = (float) generator.nextGaussian() * 2;
    float stepValueY = (float) generator.nextGaussian() * 2;
    float stepx = int(random(2)) - stepValueX;
    float stepy = int(random(2)) - stepValueY;
    
    location.x += stepx;
    location.y += stepy;
  }
}
