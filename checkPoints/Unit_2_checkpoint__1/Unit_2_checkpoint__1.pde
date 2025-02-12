//Aaron Su
//Feb.12th 


int y;


void setup() {
  size(600,600);
  strokeWeight(5);
  y = 0;
}

void draw() {
  background(255);
  ellipse(300,y,200,200);
  y = y + 5;
  if (y > 700) {
    y = -100;
  }
}
