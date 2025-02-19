//Aaron Su
//2-4
//Feb. 19th, 2025


//Start variables setup ===========================================================================================

float xBall;
float yBall;
float speedXBall;
float speedYBall;
float rBall;
float xLRacquet;
float xRRacquet;
float speedLRacquet;
float speedRRacquet;


//End variables setup =============================================================================================



void setup() { //Start setup ======================================================================================
  
  //Frame setup
    size(500, 500);
  
  //Variables setup
    xBall = 250;
    yBall = 250;
    rBall = 15;
    speedXBall = random(-5,5);
    speedYBall = random(-5,5);
    xLRacquet = 120;
    xRRacquet = 380;
    speedLRacquet = 8;
    speedRRacquet = -8;
    
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
    ellipse(xBall, yBall, rBall*2, rBall*2);

  //Position
    xBall = xBall + speedXBall;
    yBall = yBall + speedYBall;

  //Bounce animation
    if (((xBall - rBall) < 105) || ((xBall + rBall) > 395)) {
      speedXBall = speedXBall * -1;
      if (speedXBall > 0) {
        speedXBall = speedXBall + random(0,10);
      } else if (speedXBall < 0) {
        speedXBall = speedXBall - random(0,10);
      } else {
        speedXBall = speedXBall + random(-10,10);
      }
    }
    
    if (((yBall - rBall) < 55) || ((yBall + rBall) > 445)) {
      speedYBall = speedYBall * -1;
      
      if (speedYBall > 0) {
        speedYBall = speedYBall + random(0,10);
      } else if (speedYBall < 0) {
        speedYBall = speedYBall - random(0,10);
      } else {
        speedYBall = speedYBall + random(-10,10);
      }
    }
    
    //Speed restriction
      speedXBall = constrain(speedXBall, random(-20,-5), random(5,20));
      speedYBall = constrain(speedYBall, random(-20,-5), random(5,20));
      
    //Racquets      
      strokeWeight(0);
      fill(255,0,0);
      stroke(255,0,0);
      rect(xLRacquet-10, 20, 20, 40);
      fill(0,0,255);
      stroke(0,0,255);
      rect(xRRacquet-10, 440, 20, 40);
      
      strokeWeight(3);
      stroke(0);
      noFill();
      ellipse(xLRacquet, 100, 50, 80);
      ellipse(xRRacquet, 400, 50, 80);
      
    //Position update
      xLRacquet = xLRacquet + speedLRacquet;
      xRRacquet = xRRacquet + speedRRacquet;

    //Moving animation
      if ((xLRacquet < 120) || (xLRacquet > 380)) {
        speedLRacquet = speedLRacquet* -1;
      }
      if ((xRRacquet < 120) || (xRRacquet > 380)) {
        speedRRacquet = speedRRacquet* -1;
      }
      
} //End draw ======================================================================================================
