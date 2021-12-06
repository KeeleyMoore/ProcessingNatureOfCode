class Walker {
  int x;
  int y;
  
  Walker() {
    x = width / 2;
    y = height / 2;
  }
  
  void render() {
    stroke(0);
    point(x, y);
  }
  
  // Answer:
  
  void step() {
    
    float r = random(1);
    // A 50% of moving towards the mouse
    if (r < 0.5) {    
      int xdir = (mouseX - x);
      int ydir = (mouseY - y);
      if (xdir != 0) {
        xdir /= abs(xdir);
      } 
      if (ydir != 0) {
        ydir /= abs(ydir);
      }
      x += xdir;
      y += ydir;
    } else {
      int xdir = int(random( -2, 2));
      int ydir = int(random( -2, 2));
      x += xdir;
      y += ydir;
    }
    
    x = constrain(x, 0, width - 1);
    y = constrain(y, 0, height - 1);
  }
  
  
  
  
  // void stepThree() {
  //   float stepx = random(1);
  //   float stepy = random(1);
  //   float r = random(1);
  //   if (r < 0.25) {
  //     x++;
  //   } else if (r < 0.5) {
  //     x--;
  //   } else if (r < 0.75) {
  //     y++;
  //   } else  {
  //     y--;
  //   }
  
  //   boolean b = r < 0.5;
  
  //   if (mouseX < x && b) {
  //     x++;
  //   } else if (b) {
  //     x--;
  //   }
  //   if (mouseY < y && b) {
  //     y++;
  //   } else if (b) {
  //     y--;
  //   }
  // }
  
  // void firstStep() {
  //   int stepx = mouseX > x ? 1 : - 1;
  //   int stepy = mouseY > y ? 1 : - 1;
  //   float r = random(1);
  //   if (r < 0.25) {
  //     x += stepx + 1;
  //   } else if (r < 0.5) {
  //     x += stepx - 1;
  //   } else if (r < 0.75) {
  //     y += stepy + 1;
  //   } else  {
  //     y += stepy - 1;
  //   }
  
  //   x += stepx;
  //   y += stepy;
  // }
  
  // void stepTwo() {
  //   float stepx = mouseX > x ? random(1) : - random(1);
  //   float stepy = mouseY > y ? random(1) : - random(1);
  
  //   float r = random(1);
  //   if (r < 0.25) {
  //     x += stepx;
  //   } else if (r < 0.5) {
  //     x -= stepx;
  //   } else if (r < 0.75) {
  //     y += stepy;
  //   } else  {
  //     y -= stepy;
  //   }
  
  //   x += stepx;
  //   y += stepy;
  // }
  
}


//mouseX, mouseY,
