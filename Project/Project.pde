import java.util.*;

Hopper hopper;

void setup() {
  size(100, 100);
  hopper = new Hopper(width / 2, height / 2);
  background(255);
}

void draw() {
  background(255);
  hopper.render();
  hopper.checkEdges();
  hopper.step();
}
