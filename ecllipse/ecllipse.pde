float x=0;
void setup(){
  size(800,500);
  background(#3254a5);
}

void draw(){
  background(#2244a0);
  
  fill(255,255,150);
  noStroke();
  ellipse(width/2,height/2,300,300);
  
  fill(#2244a5);
  ellipse(x,height/2,300,300);
  x+=0.5;

}
