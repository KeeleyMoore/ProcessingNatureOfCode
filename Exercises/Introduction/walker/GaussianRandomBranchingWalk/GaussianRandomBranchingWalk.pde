// Exercise I.5
// A Gaussian random walk is defined as one in which the step size (how far the object moves in a given direction) 
// is generated with a normal distribution. Implement this variation of our random walk.

//TODO:: create a branching version, where after X amount of steps,
//       the dot will split into 2 different dots now going on their own path
//       the dots colours should also split going in opposite directions,
//       e.g. one will lose a lot of blue saturation and the other gain the same amount

//TODO: Examples -> Topics -> Advanced Data -> 

import java.util.*;
Random generator;
ArrayList<Walker> walkers;

// WalkersOriginal walkersOriginal;

void setup() {
  size(640,640);
  background(255);
  // frameRate(30);
  
  // Create a walker object
  
  float ir = map(width / 2,0, width, 0, 255);
  float ig = map(height / 2, 0, height, 0, 255);
  float ib = map((width / 2 + height / 2) / 2, 0,(width + height) / 2, 0, 255);
  
  //  TODO:: Find out why these array list types arent working
  walkers = new ArrayList<Walker>();
  walkers.add(new Walker(ir, ib, ig, 255, width / 2, height / 2, walkers));
  // walkersOriginal = new WalkersOriginal(ir, ib, ig, 255, width / 2, height / 2);
}

void draw() {
  // background(255);
  // Run the walker object
  // println(walkers);
  for (int i = walkers.size()-1; i >= 0; i--) {
    Walker walker = walkers.get(i);
    walker.step();
    if (walker.dead()) {
      // Items can be deleted with remove()
      walkers.remove(i);
    }
  }
  
  // walkersOriginal.step();
}
