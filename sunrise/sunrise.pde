float bgcolor;
float x=0,y;
Boolean daytime = false;
void setup() {
  size(650, 500);
}
void draw() {
  y=cos(x/360*PI)*height/2+height/2+100;
  if (y>height/2+100) {
    bgcolor=0;
  } else
    bgcolor= map(y, 100, height/2+100, 255, 0);
  background(bgcolor);
  noStroke();
   if (daytime) {
    fill(255, 40, 80);
    ellipse(x, y, 50, 50);
  } else {
    fill(255, 200, 0);
    ellipse(x, y, 50, 50);
    fill(bgcolor);
    ellipse(x-16, y, 50, 50);
  }
  fill(0, 200);
  rect(0, height/2+100, width, height/2-100); 
  if (x>width+50) {
    x=0;
    daytime = !daytime;
  }
  x++;
}
