//Start variables setup ===========================================================================================

float x, y;
float speedX;
float speedY;
float r;

//End variables setup =============================================================================================



void setup() { //Start setup ======================================================================================
  
  //Frame setup
    size(500, 500);
  
  //Variables setup
    x = 250;
    y = 250;
    r = 20;
    speedX = random(3,5);
    speedY = random(3,5);
    
} //End setup =====================================================================================================



void draw() { //Start draw ========================================================================================
  
  //Background
    background(30);
    
  //Tennis court
    strokeWeight(0);
    stroke(0,255,0);
    fill(0,255,0);
    rect(100,50,300,400);
  
  //Ball
    strokeWeight(0);
    stroke(#C0C0C0);
    fill(#C0C0C0);
    ellipse(x, y, r*2, r*2);

  //Position
    x = x + speedX;
    y = y + speedY;

  //Bounce
    if (x - r < 100 || x + r > 400) {
      speedX = speedX * -1 + random(-5,5);
    }
    if (y - r < 50 || y + r > 450) {
      speedY = speedY * -1 + random(-5,5);
    }
    
    //Speed correction
      if (speedX > 10 || speedX < -10) {
        speedX = random(-5,5);
      }
      if (speedY > 10 || speedY < -10) {
        speedY = random(-5,5);
      }
    
} //End draw ======================================================================================================
