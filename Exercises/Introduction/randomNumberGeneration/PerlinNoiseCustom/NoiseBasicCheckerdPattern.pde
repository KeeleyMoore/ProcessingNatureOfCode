// float increment = 0.02;

class NoiseBasicCheckerdPattern {
  float xoff = 0.0;
  
  NoiseBasicCheckerdPattern() {
    
  }
  
  void create() {  
    // Optional: adjust noise detail here
    //noiseDetail(8,0.65f);
    
    loadPixels();
    
    float xoff = 0.0; // Start xoff at 0
    // For every x,y coordinate in a 2D space, calculate a noise value and produce a brightness value
    
    for (int x = 0; x < width; x++) {
      
      xoff += increment;   // Increment xoff 
      // For every xoff, start yoff at 0.
      float yoff = 0.0;
      
      for (int y = 0; y < height; y++) {
        yoff += increment; // Increment yoff
        // Use xoff and yoff for noise().
        float red = map(noise(xoff),0,1,50,200);
        float green = map(noise(yoff),0,1,50,200);
        float blue = map(noise(xoff,yoff),0,1,50,200);
        
        
        //Try using this line instead
        //float bright = random(0,255);
        
        
        // Use x and y for pixel location.
        pixels[x + y * width] = color(red, green, blue);
        
      }
    }
    updatePixels();
  }
  
}
