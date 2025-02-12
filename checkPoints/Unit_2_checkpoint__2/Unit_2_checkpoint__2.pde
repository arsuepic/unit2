//Aaron Su
//Feb.12th 


int x,y;


void setup() {
  size(600,600);
  strokeWeight(5);
  x = 0;
  y = 0;
}

void draw() {
  background(255);
  ellipse(x,y,200,200);
  x = x + 5;
  y = y + 5;
  
  if (y > 700) {
    x = -100;
    y = -100;
  }
}
