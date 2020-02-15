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
  if (looping){
    drawRandomPoints();
    noLoop();
  } else {
    loop();
  }
  looping = !looping;
}

void drawRandomPoints() {
  stroke(255);
  smooth();
  for (int i=0; i<30; i++){
    float rW = random(20);
    strokeWeight(rW);
    float rX = random(width/4);
    float rY = random(height/4);
    point(mouseX-width/8 + rX, mouseY-height/8+rY); 
  }
  
  strokeWeight(2);
}
