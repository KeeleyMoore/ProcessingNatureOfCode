float montecarlo() {
  // We do this “forever” until we find a qualifying random value.
  while(true) {
    // Pick a random value.
    float r1 = random(1);
    // Assign a probability.
    float probability = r1;
    // Pick a second random value.
    float r2 = random(1);
    
    //[full] Does it qualify?  If so, we’re done!
    if (r2 < probability) {
      return r1;
    }
    //[end]
  }
}
