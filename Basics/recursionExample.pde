int level = 2;

void setup() {
  size(1280, 1280);
  noStroke();
}

void draw() {
  drawCircle(width/2, width/2, level);
}

void drawCircle(int x, int radius, int level) {                    
  float tt = 126 * level/4.0;
  fill(tt);
  ellipse(x, height/2, radius*2, radius*2);      
  if(level > 1) {
    level = level - 1;
    drawCircle(x - radius/2, radius/2, level);
    drawCircle(x + radius/2, radius/2, level);
  }
}

void mousePressed() {
  level++;
  if( level==10)
    level=2;
}
