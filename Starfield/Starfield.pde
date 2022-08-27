Star[] stars = new Star[800];
float speed;

void setup() {
  size(800, 800);
  background(0);
  
  for (int i = 0 ; i < stars.length ; i++)
    stars[i] = new Star();
}

void draw() {
  clear();
  
  speed = map(mouseX, 0, width, 0, 20);
  
  translate(width / 2, height / 2);
  
  for (Star s : stars) {
    s.update();
    s.draw();
  }
  
  // 
}
