public class Landscape {
  int scl; 
  int w, h;
  int rows, cols;  float zoff = 0.0;  // perlin noise argument
  
  float[][] z;
  
  public Landscape(int scl_,int w_, int h_) {
    scl = scl_;
    w = w_;
    h = h_;
    cols = w / scl;
    rows = h / scl;
    z = new float[cols][rows];
  }
  
  void calculate() {
    float xoff = 0;
    for (int i = 0; i < cols; i++)
    { 
      float yoff = 0;
      for (int j = 0; j < rows; j++)
      {
        z[i][j] = map(noise(xoff, yoff,zoff), 0, 1, -120, 120);
        yoff += 0.05;
      }
      xoff += 0.05;
    }
    zoff += 0.003;
  }
  
  void render() {
    // Every cell is an individual quad
    for (int x = 0; x < z.length - 1; x++)
    {
      beginShape(QUAD_STRIP);
      for (int y = 0; y < z[x].length; y++)
      {
        // one quad at a time
        // each quad's color is determined by the height value at each vertex
        // (clean this part up)
        stroke(0);
        float currentElevation = z[x][y];
        float currentShade = map(currentElevation, -120, 120, 0, 255);
        fill(currentShade, 255);
        float xCoordinate = x * scl - w / 2;
        float yCoordinate = y * scl - h / 2;
        vertex(xCoordinate, yCoordinate, z[x][y]);
        vertex(xCoordinate + scl, yCoordinate, z[x + 1][y]);
      }
      endShape();
    }
  }
  
}
