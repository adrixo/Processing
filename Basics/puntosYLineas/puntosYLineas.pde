
void setup() {
  size(1280, 720);
}

void draw() {
  background(127);
  for (int i = 0; i < height; i += 50) {
    fill(129, 206, 15);
    stroke();
    rect(0, i, width, 10);
    fill(255);
    noStroke();
    rect(i, 0, 10, height);
  }
}
