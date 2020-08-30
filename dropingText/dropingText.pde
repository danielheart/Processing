String text="Hello, Processing.";
int number=text.length();
float[]px=new float[number];
float[]py=new float[number];
char[]words=new char[number];
float targetY=300;
void setup() {
  size(650, 400);
  PFont font = createFont("/Users/mac/Library/Fonts/DIN-Black.otf", 60);
  textFont(font);
  fill(0);
  for (int i=0; i<number; i++) {
    py[i]=0;
    words[i]=text.charAt(i);
    if (i!=0) px[i]=px[i-1]+textWidth(words[i-1]);
  }
  //pixelDensity(2);
}

void draw() {
  background(240);
  for (int i=0; i<words.length; i++) {
    text(words[i], px[i]+50, py[i]-30);
    if (i==0 && py[i]<targetY)
      py[i]+=(targetY-py[i])/10+0.5;
    else if (i!=0 && py[i-1] > height/2 && py[i]<targetY)
      py[i]+=(targetY-py[i])/10+0.5;
  }
}
