Walker w;

void setup() {
  size(800, 400);
  background(255);

  w = new Walker();
}

void draw() {
  w.step();
  w.render();
}
