//Aaron Su
//Feb.12th 


int y_1,y_2;


void setup() {
  size(600,600);
  strokeWeight(5);
  y_1 = 0;
  y_2 = 0;
}

void draw() {
  background(255);
  ellipse(150,y_1,200,200);
  ellipse(450,y_2,200,200);
  y_1 = y_1 + 5;
  y_2 = y_2 - 5;
  
  if (y_1 > 700) {
    y_1 = -100;
    y_2 = 800;
  }
}
