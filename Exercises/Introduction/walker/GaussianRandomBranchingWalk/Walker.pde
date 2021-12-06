class Walker {
  int x, y, a;
  float r, g, b;

  int count = 0;

  float life = 2550;
  
  Walker(float ir, float ig, float ib, int ia, int ix, int iy, ArrayList<Walker> walkers) {
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
      float ib = map(y, 0,(width + height) / 2, 0, 255);
      walkers.add(new Walker(ir,ig,ib,a,x,y, walkers));
    } 
    
    // if (subwalker != null) {
    //   subwalker.step();
    // }
    
    float stepValueX = (float) generator.nextGaussian() * 2;
    float stepValueY = (float) generator.nextGaussian() * 2;
    float stepx = int(random(2)) - stepValueX;
    float stepy = int(random(2)) - stepValueY;
    
    x += stepx;
    y += stepy;
  }
  
  boolean dead() {
    // Balls fade out
    life--;
    if (life < 0) {
      return true;
    } else {
      return false;
    }
  }
}
