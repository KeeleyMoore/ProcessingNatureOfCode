import java.util.*;

Balloon balloons;

PVector helium;
PVector wind;
PVector windNoiseTick = new PVector(random(100), random(100));;
PVector noiseTickStep = new PVector(0.1, 0.1);

int balloonSize = 30;

void setup() {
  size(900, 600);
  background(255);
  
  for (i = 0; i < ballons.length; i++;) {
    balloons[i] = new Balloon(balloonSize);
  }
  
  // Need to figure out how to reduce heliums height gain when the wind force is stronger
  helium = new PVector(0, -0.02);
  setWind();
}

void setWind() {
  // TODO:: Figure out why the wind tends to the left
  float windX = map(noise(windNoiseTick.x), 0, 1, -0.5, 0.5);
  float windY = map(noise(windNoiseTick.y), 0, 1, -0.5, 0.5);
  wind = new PVector(windX, windY);
  windNoiseTick.add(noiseTickStep);
}

void draw() {
  background(255);
  setWind();
  balloon.applyForce(helium);
  balloon.applyForce(wind);
  balloon.update();
  balloon.render();
}
