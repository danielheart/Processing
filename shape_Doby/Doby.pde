float x, y;

void setup() {
  size(800, 600);
}

void draw() {

  x=mouseX;
  y=mouseY;
  background(255);

  //back arm
  stroke(#E79F94);
  noFill();
  strokeWeight(40);
  beginShape();
  vertex(x, y+13);
  bezierVertex(x-17, y+15, x-86, y+33, x-136, y+79);
  endShape();

  //back leg
  stroke(#92A3AF);
  strokeWeight(24);
  beginShape();
  vertex(x, y+73);
  bezierVertex(x+8, y+83, x+61, y+129, x+72, y+137);
  bezierVertex(x+82, y+149, x+112, y+178, x+115, y+182);
  endShape();

  //head
  noStroke();
  fill(#3894D5);
  ellipse(x, y, 216, 216);
  //eyes
  fill(0);
  ellipse(x+86, y-42, 7, 7);
  fill(255);
  ellipse(x+105, y, 20, 10);

  //front leg
  stroke(#A3B4C0);
  noFill();
  strokeWeight(24);
  beginShape();
  vertex(x, y+80);
  bezierVertex(x, y+75, x-14, y+129, x-34, y+137);
  bezierVertex(x-54, y+142, x-89, y+130, x-100, y+125);
  endShape();

  //Front arm
  stroke(#FFB6AB);
  noFill();
  strokeWeight(40);
  beginShape();
  vertex(x, y+13);
  bezierVertex(x+17, y+38, x+86, y+83, x+136, y+79);
  endShape();
}
