Star s;

void setup() {
  size(800, 800);
  background(0);
  stroke(255);
  s = new Star();
}

void draw() {
  clear();
  
  // Draw star
  float zRatio = s.z / width;
  float inverseZRatio = 1 - zRatio;
  float offset = inverseZRatio * 20;
  line(s.x, s.y, s.x - offset, s.y - offset);
  
  s.z += Star.speed;
  if (s.z > width)
    s = new Star();
  
  // 
}
