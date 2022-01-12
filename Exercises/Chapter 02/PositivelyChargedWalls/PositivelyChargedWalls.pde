import java.util.*;

NegativelyChargedBall[] balls = new NegativelyChargedBall[20];

void setup() {
  size(1400, 1000);
  background(255);
  
  for (int i = 0; i < balls.length; i++) {
    float size = random(0.5, 10);
    float halfSize = size / 2;
    balls[i] = new NegativelyChargedBall(size, random(0, width), random(0, height));
  }
}


void draw() {
  background(255);
  for (int i = 0; i < balls.length; i++) {
    balls[i].update();
    balls[i].checkEdges();
    balls[i].display();
  }
}
