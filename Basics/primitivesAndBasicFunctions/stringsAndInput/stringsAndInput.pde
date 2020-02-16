char letter;
String words = "Begin...";

void setup() {
  size(1280, 720);
  textFont(createFont("OpenSans-LightItalic.ttf", 80));
}

void draw() {
  background(0);

  textSize(50);
  text("Click on the program, then type to add to the String", 50, 150);
  text("Current key: " + letter, 50, 270);
  text("The String is " + words.length() +  " characters long", 50, 390);

  textSize(60);
  text(words, 50, 620, 900, 300);
}

void keyTyped() {
  if ((key >= 'A' && key <= 'z') || key == ' ') {
    letter = key;
    words = words + key;
    println(key);
  }
}
