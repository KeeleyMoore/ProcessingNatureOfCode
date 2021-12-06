class Walker {
  float x,y;
  
  float tx,ty;
  
  
  Walker() {
    tx = 0;
    ty = 10000;
    x = width / 2;
    y = width / 2;
  }
  
  void render() {
    stroke(0);
    point(x, y);
  }
  
  
  void step() {
    // x - and y - location mapped from noise;
    // x += map(noise(tx), 0, 1, 0, 4);
    // y += map(noise(ty), 0, 1, 0, 4);
    x += random( -2, 2) * map(noise(tx), 0, 1, 0, 7);
    y += random( -2, 2) * map(noise(ty), 0, 1, 0, 7);
    
    // Moveforward through “time.”
    tx += 0.01;
    ty += 0.01;
  }
}
