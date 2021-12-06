import java.util.*;

int[] randomCounts;
// StandardDeviation sd;
PaintSplatter ps;
PerlinNoise pn;

void setup() {
  size(640, 240);
  // equalDistributionSetup();
  // sd = new StandardDeviation();
  // sd.setup();
  ps = new PaintSplatter();
  pn = new PerlinNoise();
}

void draw() {
  // sd.draw();
  // ps.draw();
  pn.draw();
}

void equalDistributionSetup() {
  randomCounts = new int[20];
  print(randomCounts);
}

void equalDistribution() {
  background(255);
  
  int index = int(random(randomCounts.length));
  randomCounts[index]++;
  
  stroke(0);
  fill(175);
  int w = width / randomCounts.length;
  for (int x = 0; x < randomCounts.length; x++) {
    rect(x * w, height - randomCounts[x], w - 1 , randomCounts[x]);
  }
}
