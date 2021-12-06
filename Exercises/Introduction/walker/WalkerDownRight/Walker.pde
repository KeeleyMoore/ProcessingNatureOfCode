
class Walker {
  int x, y;
  
  Walker() {
    x = width / 2;
    y = height / 2;
  }
  
  void render() {
    stroke(0);
    point(x, y);
  }
  
  void walk() {
    int stepx = int(random(4)) - 1;
    int stepy = int(random(4)) - 1;
    
    x += stepx;
    y += stepy;
  };
};
