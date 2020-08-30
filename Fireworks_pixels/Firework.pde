class Firework {
  float x;
  float y;
  float diameter;
  float speed=random(-13,-9);
  boolean isExplode=false;
  Particle[]particles=new Particle[0];

  Firework(float tempX, float tempY, float tempDiam) {
    x = tempX;
    y = tempY;
    diameter = tempDiam;
  }
  void display() {
    if (!isExplode) {
      fill(255);
      noStroke();
      ellipse(x, y, diameter, diameter);
    } else {
      //exploding Particles
      for (int i=0; i<particles.length; i++) {
        particles[i].display();
        particles[i].move();
      }
    }
  }
  void move() {
    speed+=0.1;
    y+=speed;
  }
  void explode() {

    bomb.play();        
    isExplode = true;
    
    float d=floor(diameter/4);
    
    for (int row=0; row<img.height; row++) {
      for (int col=0; col<img.width; col++) {
        int loc = col+row*img.width;
        float r = red (img.pixels[loc]); 
        float g = green(img.pixels[loc]); 
        float b = blue (img.pixels[loc]);
        float bright = (r+g+b)/3;

        if (bright<240 && bright>30) {
          float spx=(col-15)/2;
          float spy=(row-15)/2;
          color c_=(color(r, g, b));
          Particle tempP=new Particle(x, y, d, spx, spy, c_);
          particles = (Particle[])append(particles, tempP);
        }
      }
    }
  }
}
