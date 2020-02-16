
int barWidth = 20;
int lastBar = -1;

void setup()
{
  size(1280, 720);
  colorMode(HSB, width, height, 100);
  noStroke();
  background(0);
}

void draw()
{
  int whichBar = mouseX / barWidth;
  if (whichBar != lastBar) {
    int barX = whichBar * barWidth;
    fill(barX, height, height);
    rect(barX, height/2, barWidth, height/2);
    lastBar = whichBar;

    barX = whichBar * barWidth;
    fill(barX, mouseY, 66);
    rect(barX, 0, barWidth, height/2);
    lastBar = whichBar;
  }
}
