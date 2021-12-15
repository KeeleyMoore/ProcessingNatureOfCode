import java.util.*;

Balloon balloon;

PVector helium;
PVector wind;
PVector windNoiseTick = new PVector(0.0, 100);;
PVector noiseTickStep = new PVector(0.1, 0.1);

void setup() {
  size(400, 600);
  background(255);
  balloon = new Balloon();
  
  // Need to figure out how to reduce heliums height gain when the wind force is stronger
  helium = new PVector(0, -0.02);
  setWind();
}

void setWind() {
  // TODO:: Figure out why the wind tends to the left
  float windX = (noise(windNoiseTick.x) - 0.5) /2;
  float windY = (noise(windNoiseTick.y) - 0.5) /2;
  wind = new PVector(windX, windY);
  windNoiseTick.add(noiseTickStep);
}

void draw() {
  background(255);
  setWind();
  // balloon.applyForces([helium, wind]);
  balloon.applyForce(helium);
  balloon.applyForce(wind);
  balloon.update();
  balloon.render();
}
