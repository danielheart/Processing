class Firework {
  float x;
  float y;
  float diameter;
  float speed=-10;
  boolean isPlay=false;
  Firework(float tempX, float tempY, float tempDiam) {
    x = tempX;
    y = tempY;
    diameter = tempDiam;
  }
  void display() {

    stroke(0, 255-diameter);
    strokeWeight(diameter/20);
    ellipse(x, y, diameter, diameter);
  }
  void move() {
    speed+=0.1;
    y+=speed;
  }
  void explode() {
    diameter+=abs(diameter-255)/3;
    if (!isPlay) {
      bomb.play();        
      isPlay=true;
    }
  }
}
