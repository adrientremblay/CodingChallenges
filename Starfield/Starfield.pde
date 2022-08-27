Star s;

void setup() {
  size(400, 400);
  background(0);
  s = new Star();
}

void draw() {
  clear();
  
  // Draw star
  float zRatio = s.z / width;
  float sSize = Star.size * zRatio;
  rect(s.x, s.y, Star.size * sSize, sSize);
  
  s.z += Star.speed;
  if (s.z > width)
    s = new Star();
  
  // 
}
