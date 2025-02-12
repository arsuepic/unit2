//Aaron Su
//Feb.12th  


int d;


void setup() {
  size(600,600);
  strokeWeight(5);
  d = 0;
}

void draw() {
  background(255);
  ellipse(300,300,d,d);
  d = d + 5;
  
  if (d > 850) {
    d = 0;
  }
}
