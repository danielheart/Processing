PImage [] img = new PImage[36]; 
int index=0, number=36;
void setup() {
  size(600, 400);
  for (int i=0; i<number; i++) {
    String path = i<9 ? "img"+"0"+(i+1)+".jpg" : "img"+(i+1)+".jpg";
    img[i] = loadImage(path);
  }
  pixelDensity(2);
}

void draw() {
  background(240);
  image(img[index], 0, 0, width, height);
}
void mouseDragged() {
  if (mouseX-pmouseX>0) {
    index++;
    if (index>=number) index=0;
  } else if (mouseX-pmouseX<0) {
    index--;
    if (index<0) index=number-1;
  }
}
