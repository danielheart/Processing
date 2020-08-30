float x;
float y=0;
float t=0;
float g=0.05;
void setup() {
  size(400, 600);
  x=width/2;
  pixelDensity(2);
}

void draw() {
  background(80);
  noStroke();
  y=g*t*t;
  ellipse(x, y, 50, 50);
  t++;
  if (y>height) {
    t=0;
  }
}
