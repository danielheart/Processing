String text="Hello!";
int number=text.length();
float[]px=new float[number];
float[]pr=new float[number];
char[]words=new char[number];
float targetAngle=0;
void setup() {
  size(650, 400);
  PFont font = createFont("/Users/willove/Library/Fonts/DIN-Black.otf", 150);
  textFont(font);
  textAlign(CENTER, CENTER);
  fill(0);
  for (int i=0; i<number; i++) {
    pr[i]=-PI/4;
    words[i]=text.charAt(i);
    if (i!=0)
      px[i]=px[i-1]+textWidth(words[i-1]);
  }
  pixelDensity(2);
}

void draw() {
  background(240);
  for (int i=0; i<words.length; i++) {
    if (i==0 || i!=0&&pr[i-1]>=targetAngle) {
      push();
      translate(px[i]+80+textWidth(words[i])/2, height/2);
      rotate(pr[i]);
      text(words[i], 0, 0);
      pop();
      if (pr[i]<targetAngle)
        pr[i]+=(targetAngle-pr[i])/6+0.01;
    }
  }
}
