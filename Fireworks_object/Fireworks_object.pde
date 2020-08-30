import processing.sound.*;
SoundFile bomb;
Firework[] fws = new Firework[0];
void setup() {
  size(400, 600);
  pixelDensity(2);
  noFill();

  bomb=new SoundFile(this, "bomb.mp3");
}
void draw() {
  background(240);
  for (int i=0; i<fws.length; i++) { 
    fws[i].display();
    fws[i].move();
    if (fws[i].speed>=0) {
      fws[i].explode();
    }
  }
}
void mouseClicked() {
  Firework tempfwss = new Firework(random(100, 300), height, random(10, 30)) ;
  fws = (Firework[])append(fws, tempfwss);
}
