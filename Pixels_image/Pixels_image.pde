PImage img;

void setup() {
  size(300, 300);
  img =loadImage("1.png");
  pixelDensity(2);
  noStroke();
}

void draw() {

  background(255);
  img.loadPixels();
  for (int y=0; y<img.height; y++) {
    for (int x=0; x<img.width; x++) {
      int loc = x+y*img.width;
      float r = red (img.pixels[loc]); 
      float g = green(img.pixels[loc]); 
      float b = blue (img.pixels[loc]);
      fill(color(r,g,b));     
      ellipse(x*10,y*10,10,10);
    }
  }

}
