//simulate fireworks
float x, y; //x,y location
float d; //diameter
float speed;

void setup() {
  size(400, 600);
  reset();
  pixelDensity(2);
}

void draw() {
  background(240);
  display();
  move();
  if (speed>=0) {
    explode();
  }
}

void display() {

  fill(240);
  ellipse(x, y, d, d);
}

void move() {
  speed+=0.1;
  y+=speed;
}

void explode() {
  strokeWeight(d/20);
  stroke(0, 255-d);
  d+=abs(d-255)/3;
}

void mouseClicked() {
  reset();
}

void reset() {
  x=random(0, width);
  y=height;
  speed=-10;
  d=20;
  stroke(0);
  strokeWeight(2);
}
