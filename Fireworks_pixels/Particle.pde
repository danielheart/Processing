class Particle {
  float x;
  float y;
  float d;
  float speedX=0;
  float speedY=0;
  color c;
  int lifespan=255;
  
  Particle(float x_, float y_, float d_, float spx_, float spy_, color c_) {
    x= x_;
    y= y_;
    d= d_;
    speedX = spx_;
    speedY= spy_;
    c= c_;
  }
  
  void display(){
    fill(c, lifespan);
    noStroke();
    ellipse(x,y,d,d);
  }
  void move(){
    speedY+=0.2;
    y+=speedY;
    x+=speedX;
    lifespan-=5;
  }
}
