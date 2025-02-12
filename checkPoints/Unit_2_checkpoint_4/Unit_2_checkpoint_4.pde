//Aaron Su
//Feb.12th 


int x;


void setup() {
  size(600,600);
  strokeWeight(5);
  x = 0;
}

void draw() {
  background(255);
  ellipse(x,300,200,200);
  x = x - 5;
  
  if (x < -100) {
    x = 700;
  }
}
