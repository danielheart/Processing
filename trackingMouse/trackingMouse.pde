int num = 60;
int[] x = new int[num]; 
int[] y = new int[num];
void setup() {
  size(600, 400);
  noStroke();
  pixelDensity(2);
}
void draw() {
  background(0);
  // Copy array values from back to front 
  for (int i = x.length-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  x[0] = mouseX; // Set the first element 
  y[0] = mouseY; // Set the first element 
  for (int i=0; i<x.length; i++) {
    fill(255-i * 4);
    ellipse(x[i], y[i], 60-i, 60-i);
  }
}
