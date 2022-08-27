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
   
   ellipse(sx, sy, 8, 8);
  }
}
