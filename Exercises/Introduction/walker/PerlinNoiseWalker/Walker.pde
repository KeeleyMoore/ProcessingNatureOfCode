class Walker {
  float x,y;
  float tx,ty;
  Walker() {
    tx = 0;
    ty = 10000;
  }
  
  void render() {
    stroke(0);
    point(x, y);
  }
  
  void step() {
    // x - and y - location mapped from noise;
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
    
    // Moveforward through “time.”
    tx += 0.01;
    ty += 0.01;
  }
}
