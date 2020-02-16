int j = 0;

void setup() {
  size(1280, 720);
}

void draw() {
  if (j == 255)
    j = 0;
  j++;

  background(127);
  for (int i = 0; i < height; i += 50) {
    fill(129, 206, 15);
    stroke(0);
    rect(0, i, width, 10);
    fill(j);
    noStroke();
    rect(i, 0, 10, height);
  }
}
