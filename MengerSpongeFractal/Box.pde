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
}
