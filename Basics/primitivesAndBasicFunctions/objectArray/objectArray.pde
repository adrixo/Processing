int unit = 40;
int count;
Module[] mods;

void setup() {
  size(1280, 720);
  noStroke();
  int wideCount = width / unit;
  int highCount = height / unit;
  count = wideCount * highCount;
  mods = new Module[count];

  int index = 0;
  for (int y = 0; y < highCount; y++) {
    for (int x = 0; x < wideCount; x++) {
      mods[index++] = new Module(x*unit, y*unit, unit/2, unit/2, random(0.05, 0.8), unit);
    }
  }
}

void draw() {
  background(20,10,30);
  for (Module mod : mods) {
    mod.update();
    mod.display();
  }
}


class Module {
  int xOffset;
  int yOffset;
  float x, y;
  int unit;
  int xDirection = 1;
  int yDirection = 1;
  float speed;
  int randomSize;
  int randomColorR;
  int randomColorG;
  int randomColorB;

  // Contructor
  Module(int xOffsetTemp, int yOffsetTemp, int xTemp, int yTemp, float speedTemp, int tempUnit) {
    xOffset = xOffsetTemp;
    yOffset = yOffsetTemp;
    randomSize = (int) random(30);
    randomColorR = (int) random(255);
    randomColorG = (int) random(255);
    randomColorB = (int) random(255);
    x = xTemp;
    y = yTemp;
    speed = speedTemp;
    unit = tempUnit;
  }

  // Custom method for updating the variables
  void update() {
    x = x + (speed * xDirection);
    if (x >= unit || x <= 0) {
      xDirection *= -1;
      x = x + (1 * xDirection);
      y = y + (1 * yDirection);
    }
    if (y >= unit || y <= 0) {
      yDirection *= -1;
      y = y + (1 * yDirection);
    }
  }

  // Custom method for drawing the object
  void display() {
    fill(randomColorR, randomColorG, random(255));
    ellipse(xOffset + x, yOffset + y, randomSize, randomSize);
  }
}
