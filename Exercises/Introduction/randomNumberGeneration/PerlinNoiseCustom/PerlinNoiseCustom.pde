// NoiseBasic nb;
NoiseAnimated na;

void setup() {
  size(640,360);
  // nb = new NoiseBasic();
  na = new NoiseAnimated();
  // noLoop();
}

void draw() {
  background(0);
  // nb.create();
  na.create();
}
