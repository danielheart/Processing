float angle=0;

void setup() {
  size(800, 600);
  pixelDensity(2);
}


void draw() {
  background(#0061D6);
  translate(mouseX, mouseY);
  rotate(angle);
  fill(255);
  noStroke();
  for (int i=0; i<4; i++) {

    rotate(PI/2*i);
    rect(2, 2, 60, 60);
    triangle(62, 2, 62, 62, 122, 2);
  }

  angle+=map(mouseX, 0, width, PI/180, PI/45);
}
