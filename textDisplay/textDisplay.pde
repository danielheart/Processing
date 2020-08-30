PFont font;
String text;
float angle=PI/60;
void setup() {
  size(700, 400);
  font = createFont("/Users/mac/Library/Fonts/DIN-Black.otf", 60);
  textFont(font);
  fill(0);
  text="Hello. I am Processing.";
}

void draw() {
  background(250);
  textAlign(LEFT, TOP);
  float textWidth=0;
  for (int i=0; i<text.length(); i++) {
    push();
    translate(100+textWidth, 100);
    rotate(angle);
    char c=text.charAt(i);
    text(c, 0, 0 );
    textWidth+=textWidth(c);
    pop();
  }
  angle+=PI/180;
}
