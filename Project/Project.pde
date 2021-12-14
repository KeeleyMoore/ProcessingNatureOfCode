import java.util.*;

Hopper hopper1;
Hopper hopper2;

BoatMan boatMan;


void setup() {
  size(600, 600);
  hopper1 = new Hopper(width / 2, height / 2);
  hopper2 = new Hopper(width / 2, height / 2);

  boatMan = new BoatMan(width / 2, height / 2);
  background(255);
}

void draw() {
  background(255);
  hopper1.render();
  hopper2.render();
  hopper1.step();
  hopper2.step();
  boatMan.update();
  boatMan.render();
}
