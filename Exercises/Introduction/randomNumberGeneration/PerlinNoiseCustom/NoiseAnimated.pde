// float increment = 0.01;

class NoiseAnimated {
  float xoff = 0.0;
  float animate = 0.0;
  
  NoiseAnimated() {
    
  }
  
  void create() {  
    // Optional: adjust noise detail here
    noiseDetail(8,0.65f);
    loadPixels();
    
    animate += 0.01;
    float xoff = 0.0; // Start xoff at 0
    // For every x,y coordinate in a 2D space, calculate a noise value and produce a brightness value
    
    for (int x = 0; x < width; x++) {
      
      xoff += increment;   // Increment xoff 
      // For every xoff, start yoff at 0.
      float yoff = 0.0;
      
      for (int y = 0; y < height; y++) {
        yoff += increment; // Increment yoff
        // Use xoff and yoff for noise().
        // noiseDetail(8,0.65);
        float red = map(noise(xoff, yoff, animate),0,1,70,170);
        // noiseDetail(4,0.65);
        float green = map(noise(xoff, yoff, animate),0,1,70,140);
        // noiseDetail(1,0.65);
        float blue = map(noise(xoff,yoff, animate),0,1,40,110);
        
        
        //Try using this line instead
        //float bright = random(0,255);
        
        
        // Use x and y for pixel location.
        pixels[x + y * width] = color(red, green, blue);
        
      }
    }
    updatePixels();
  }
}
