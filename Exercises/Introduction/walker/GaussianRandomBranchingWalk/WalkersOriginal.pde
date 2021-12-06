
// inputs   
// float ir = map(width / 2,0, width, 0, 255);
// float ig = map(height / 2, 0, height, 0, 255);
// float ib = map((width / 2 + height / 2) / 2, 0,(width + height) / 2, 0, 255);

// w = new Walkers(ir, ib, ig, 255, width / 2, height / 2);

class WalkersOriginal {
  int x, y, a;
  float r, g, b;
  int count = 0;
  
  WalkersOriginal subwalker;
  
  WalkersOriginal(float ir, float ig, float ib, int ia, int ix, int iy) {
    // println(ir, ig, ib, ia, ix, iy);
    x = ix;
    y = iy;
    r = ir;
    g = ig;
    b = ib;
    a = ia;
    
    generator = new Random();
  }
  
  void step() {
    stroke(r, g, b, a);
    point(x, y);
    
    count++;
    if (count == 50) {
      float ir = map(x,0, width, 0, 255);
      float ig = map(y, 0, height, 0, 255);
      float ib = map((x + y) / 2, 0,(width + height) / 2, 0, 255);
      subwalker = new WalkersOriginal(ir,ig,ib,a,x,y);
    } 
    
    if (subwalker != null) {
      subwalker.step();
    }
    
    float stepValueX = (float) generator.nextGaussian() * 2;
    float stepValueY = (float) generator.nextGaussian() * 2;
    float stepx = int(random(2)) - stepValueX;
    float stepy = int(random(2)) - stepValueY;
    
    x += stepx;
    y += stepy;
  }
}
