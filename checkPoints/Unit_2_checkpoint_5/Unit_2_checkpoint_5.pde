//Aaron Su
//Feb.12th 


int x,d;


void setup() {
  size(600,600);
  strokeWeight(5);
  x = 0;
  d = 0;
}

void draw() {
  background(255);
  ellipse(x,300,d,d);
  x = x + 5;
  d = d + 1;
  
  if (x > 800) {
    x = -50;
    d = 0;
  }
}
