float x;
float y=0;
float dt=0.1;
float v=0;
float g=10;
void setup() {
  size(400, 600);
  x=width/2;
  pixelDensity(2);
}

void draw() {
  background(#13273a);
  noStroke();
  v=v+dt*g;
  y=y+v*dt;
  ellipse(x, y, 50, 50);
  if (y>height-25) {
    v=-v;
  }
}
