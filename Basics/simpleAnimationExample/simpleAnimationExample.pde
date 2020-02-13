boolean looping = false;
int y = 100;

void setup() {
  size(1280, 720);
  stroke(255);
  frameRate(30);
}

void draw() {
  
  background(0);
  y = y - 1;
  if (y < 0) {
    y = height;
  }
  line(0, y, width, y);
}

void mousePressed() { 
  if (looping)
    noLoop();
  else 
    loop();
  looping = !looping;
}
