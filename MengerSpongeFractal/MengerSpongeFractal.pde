float a = 0;
ArrayList<Box> sponge = new ArrayList<Box>();

void setup() {
  size(400, 400, P3D);
  sponge.add(new Box(0, 0, 0, 200));
}

void draw() {
  background(51);
  stroke(255);
  noFill();
  
  translate(width / 2, height / 2);
  
  rotateX(a);
  for (Box b : sponge) {
    b.draw(); 
  }
  a += 0.01;
}

void keyPressed() {
  if (key != ' ') 
    return;
  
  ArrayList<Box> next = new ArrayList<Box>();
  
  for (Box b : sponge)
     next.addAll(b.generate());
  
  sponge = next;
}
