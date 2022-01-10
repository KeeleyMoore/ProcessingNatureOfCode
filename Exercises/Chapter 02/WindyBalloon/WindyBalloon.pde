import java.util.*;

Balloon[] balloons = new Balloon[20];

PVector helium;
PVector wind;
PVector windNoiseTick = new PVector(random(100), random(100));;
PVector noiseTickStep = new PVector(0.1, 0.1);

int balloonSize = 30;

void setup() {
  size(900, 600);
  background(255);
  
  for (int i = 0; i < balloons.length; i++) {
    balloons[i] = new Balloon(balloonSize, balloonSize / 4);
  }
  
  // Need to figure out how to reduce heliums height gain when the wind force is stronger
  helium = new PVector(0, -0.02);
  setWind();
}

void setWind() {
  // TODO:: Figure out why the wind tends to the left
  float windX = map(noise(windNoiseTick.x), 0, 1, -1, 1) * 0.4;
  float windY = map(noise(windNoiseTick.y), 0, 1, -1, 1) * 0.2;
  wind = new PVector(windX, windY);
  windNoiseTick.add(noiseTickStep);
}

void draw() {
  background(255);
  setWind();
  for (int i = 0; i < balloons.length; i++) {
    balloons[i].applyForce(helium);
    balloons[i].applyForce(wind);
    balloons[i].update();
    balloons[i].render();
  }
}
