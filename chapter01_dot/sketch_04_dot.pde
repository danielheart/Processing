
size(500, 500);
pixelDensity(2);
background(255, 255, 50);
fill(0);
noStroke();
translate(width/2, height/2);

for (int j=0; j<6;j++) {
  int x=30+j*40;
  int y=0;
  int sum =floor(PI*x/25);
  for (int i = 0; i <sum; i += 1) {
    rotate(2*PI/sum);
    ellipse(x, y, 25, 25);
  }
}

saveFrame();
