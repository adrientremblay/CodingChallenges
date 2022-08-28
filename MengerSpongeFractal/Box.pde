class Box {
  PVector pos;
  float r;
  
  Box(float x, float y, float z, float r) {
    pos = new PVector(x, y, z);
    this.r = r;
  }
  
  void draw() {
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    box(r);
    popMatrix();
  }
  
ArrayList<Box> generate() {
    ArrayList<Box> boxes = new ArrayList<Box>();
    float newR = r / 3;
    
    for (int x = -1 ; x <= 1 ; x++) {
      for (int y = -1 ; y <= 1 ; y++) {
        for (int z = -1 ; z <= 1 ; z++) {
          int zeroCount = 0;
          if (x == 0)
            zeroCount++;
          if (y == 0)
            zeroCount++;
          if (z==0)
            zeroCount++;
            
          if (zeroCount >= 2)
            continue; 
          
          boxes.add(new Box(pos.x+x*newR, pos.y+y*newR, pos.z+z*newR, newR));
        }
      }
    }
    
    return boxes;
  }
  
}
