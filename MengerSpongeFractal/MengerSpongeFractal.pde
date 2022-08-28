float a = 0;
Box b;

void setup() {
  size(400, 400, P3D);
  b = new Box(0, 0, 0, 200);
  
  background(51);
  stroke(255);
  noFill();
}

void draw() {
  clear();
  translate(width / 2, height / 2);
  
  rotateX(a);
  b.draw(); 
  a += 0.01;
}
