import processing.sound.*;
SoundFile bomb;
Firework[] fws = new Firework[0];

PImage img;
void setup() {
  size(500, 800);
  pixelDensity(2);
  background(#13283a);
  img =loadImage("1.png");
  bomb = new SoundFile(this, "bomb.wav");
}
void draw() {
  fill(#13283a,10);
  rect(0,0,width,height);
  for (int i=0; i<fws.length; i++) { 
    fws[i].display();
    fws[i].move();
    if (fws[i].speed>=0 && !fws[i].isExplode) {
      fws[i].explode();
    }
  }
}
void mouseClicked() {
  Firework tempfw = new Firework(random(100, 300), height, random(10, 30)) ;
  fws = (Firework[])append(fws, tempfw);
}
