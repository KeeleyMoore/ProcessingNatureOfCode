class PerlinNoise {
  float t = 0;
  
  PerlinNoise() {
    
  }
  
  
  void draw() {
    float n = noise(t);
    println(n);
    // Now,we move forward in time!
    t += 0.001;
  }
}
