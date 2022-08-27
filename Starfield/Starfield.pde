Star s;

void setup() {
  size(400, 400);
  s = new Star();
}

void draw() {
  rect(s.x, s.y, 10, 10);
}
