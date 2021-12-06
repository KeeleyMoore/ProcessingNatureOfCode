Walker w;

void setup() {
  size(600, 400);
  background(255);
  w = new Walker();
}
void draw() {
  w.walk();
  w.render();
}
