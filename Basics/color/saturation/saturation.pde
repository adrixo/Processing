
int barWidth = 20;
int lastBar = -1;


void setup() {
 size(1280, 720);
 colorMode(HSB, width, height, 100);
 noStroke();
}


void draw() {
 int whichBar = mouseX / barWidth;
 if (whichBar != lastBar) {
   int barX = whichBar * barWidth;
   fill(barX, mouseY, 66);
   rect(barX, 0, barWidth, height);
   lastBar = whichBar;
 }
}
