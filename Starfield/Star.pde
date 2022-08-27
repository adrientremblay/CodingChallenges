class Star {
  static final float size = 5;
  static final float speed = 5;
  
  float x;
  float y;
  float z;
  
  Star() {
    x = random(0, width);
    y = random(0, height);
    z = random(0, width);
  }
}
