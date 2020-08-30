import processing.video.*;
String currentT, durationT;
float now, due;
Movie mov;

PImage[]pic=new PImage[4];
Boolean isPlay=true;
int state=0;
float loc=200;

void setup() {
  size(800, 450);
  noStroke();
  for (int i=0; i<pic.length; i++)
    pic[i]=loadImage("play0"+(i+1)+".png");

  mov = new Movie(this, "/Users/willove/Movies/earth.mov");
  mov.loop();
  due=mov.duration();
}
void draw() {
  image(mov, 0, 0, width, height);
  now=mov.time();
  loc=map(now, 0, due, 120, 720);
  //Play&pause button
  if (isPlay) {
    state=0;
    if (mouseIsIn(16, height-52, 34, 34))   
      state=1;
  } else {
    state=2;
    if (mouseIsIn(16, height-52, 34, 34))
      state=3;
  } 
  image(pic[state], 16, 398, 34, 34);

  //Process bar
  fill(255, 80);
  rect(120, 414, 600, 5, 3);
  fill(#41A3FC);
  rect(120, 414, loc-120, 5, 3);
  ellipse(loc, 416.5, 20, 20);

  //Time text
  textSize(12);
  fill(255);
  text(formatTime(mov.time()), 55, 421);
  text(formatTime(mov.duration()), 726, 421);
}

void mouseReleased() {
  if (mouseIsIn(16,height-52,34,34)) {   
    if (isPlay) mov.pause();
    if (!isPlay) mov.play();
    isPlay=!isPlay;
  } else if (mouseIsIn(120,400,600,33)) {
    loc=mouseX;
    float targetT=map(loc, 120, 720, 0, due);
    mov.jump(targetT);
  }
}


Boolean mouseIsIn(float x, float y, float w, float h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h)
    return true;
  else
    return false;
}

//Convert now time to XX:XX:XX
String formatTime(float origin) {
  String resultT;
  int hour=floor(origin/360);
  resultT=""+(hour<10 ? ("0"+hour):hour)+":";
  int minute = floor(origin/60);
  resultT=resultT + (minute<10 ? ("0"+minute):minute)+":";
  int second =floor(origin)%60;
  resultT=resultT + (second<10 ? ("0"+second):second);
  return resultT;
}

//Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}
