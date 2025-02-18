//Aaron Su
//2-4
//Feb. 19th, 2025


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
    r = 15;
    speedX = random(-5,5);
    speedY = random(-5,5);
    
} //End setup =====================================================================================================



void draw() { //Start draw ========================================================================================
  
  //Background
    background(#6c935c);
    
  //Tennis court
    strokeWeight(5);
    stroke(255);
    fill(#3c638e);
    rect(100,50,300,400);
    line(140,50,140,450);
    line(360,50,360,450);
    line(250,50,250,58);
    line(250,450,250,442);
    line(140,150,360,150);
    line(140,350,360,350);
    line(50,250,450,250);
    line(250,150,250,350);
    
    strokeWeight(10);
    line(50,250,450,250);

    
    fill(255);
    ellipse(50,250,15,15);
    ellipse(450,250,15,15);

  
  //Ball
    strokeWeight(0);
    stroke(#dfff4f);
    fill(#dfff4f);
    ellipse(x, y, r*2, r*2);

  //Position
    x = x + speedX;
    y = y + speedY;

  //Bounce animation
    if (((x - r) < 105) || ((x + r) > 395)) {
      speedX = speedX * -1;
      
      if (speedX > 0) {
        speedX = speedX + random(0,2);
      }
      if (speedX < 0) {
        speedX = speedX - random(0,2);
      }
    }
    
    if (((y - r) < 55) || ((y + r) > 445)) {
      speedY = speedY * -1;
      
      if (speedY > 0) {
        speedY = speedY + random(0,2);
      } 
      if (speedY < 0) {
        speedY = speedY - random(0,2);
      }
    }
    
    //Speed restriction
      if (speedX > 8 || speedX < -8) {
        if (speedX > 0) {
          speedX = speedX - random(2,7);
        } 
        if (speedX < 0) {
          speedX = speedX + random(2,7);
        }
      }
      
      if (speedY > 8 || speedY < -8) {
        if (speedY > 0) {
          speedY = speedY - random(2,7);
        } 
        if (speedY < 0)  {
          speedY = speedY + random(2,7);
        }
      }
    
} //End draw ======================================================================================================
