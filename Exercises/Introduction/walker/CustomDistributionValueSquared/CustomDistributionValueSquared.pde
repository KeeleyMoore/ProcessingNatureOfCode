// Use a custom probability distribution to vary the size of a step taken by the random walker. 
// The step size can be determined by influencing the range of values picked. 
// Can you map the probability exponentially—i.e. making the likelihood that a value is picked equal to the value squared?
Random generator;
Walker cd;
void setup() {
  size(400,400);
  frameRate(30);

  // Create a walker object
  cd = new Walker();

  background(255);
}

void draw() {
  // background(255);
  // Run the walker object
  cd.step();
  cd.render();
}
