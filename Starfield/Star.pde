class Star {
  static final float size = 5;
  static final float speed = 5;
  
  float x;
  float y;
  float z;
  
  Star() {
    init();
  }
  
  private void init() {
    x = random(-width, width);
    y = random(-height, height);
    z = random (1, width);
  }
  
  public void update() {
    z -= speed;
    if (z <= 0) {
      init();
    }
  }
  
  public void draw() {
   fill(255);
   noStroke();
   
   float sx = x/ z * width;
   float sy = y / z * width;
   
   float psx = x/ (z + ((1 - (z / width)) * 10)) * width;
   float psy = y /(z + ((1 - (z / width)) * 10)) * width;
   
   // drawing ball
   float currentSize = size * (1 - (z / width));
   ellipse(sx, sy, currentSize, currentSize);
   
   // drawing line
   stroke(255);
   line (sx, sy, psx, psy);
  }
}
