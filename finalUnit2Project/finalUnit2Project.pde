//Aaron Su
//2-4
//Feb. 19th, 2025


//Start variables setup ===========================================================================================

  //ints
    int numStars = 50;

  //floats
    float xBall;
    float yBall;
    float speedXBall;
    float speedYBall;
    float rBall;
    float xLeftRacquet;
    float xRightRacquet;
    float speedLeftRacquet;
    float speedRightRacquet;
    float[] starsLeftSideX = new float[numStars];
    float[] starsLeftSideY = new float[numStars];
    float[] starsRightSideX = new float[numStars];
    float[] starsRightSideY = new float[numStars];
    float[] speedStars = new float[numStars];
    float widthLeftSideStars;
    float heightLeftSideStars;
    float widthRightSideStars;
    float heightRightSideStars;

//End variables setup =============================================================================================



void setup() { //Start setup ======================================================================================
  
  //Frame setup
    size(500, 500);
  
  //Variables setup
    widthLeftSideStars = 0;
    heightLeftSideStars = 0;
    widthRightSideStars = 0;
    heightRightSideStars = 0;
    xBall = 250;
    yBall = 250;
    rBall = 15;
    speedXBall = random(-5,5);
    speedYBall = random(-5,5);
    xLeftRacquet = 120;
    xRightRacquet = 380;
    speedLeftRacquet = 8;
    speedRightRacquet = -8;
    
    
  //Star
    for (int i = 0; i < 50; i = i + 1) {
      starsLeftSideX[i] = random(10, 100);
      starsLeftSideY[i] = random(500);
      starsRightSideX[i] = random(500 - 100, 500 - 10);
      starsLeftSideY[i] = random(500);
      speedStars[i] = random(1, 3);
    }

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
      rect(xLeftRacquet-10, 20, 20, 40);
      fill(0,0,255);
      stroke(0,0,255);
      rect(xRightRacquet-10, 440, 20, 40);
      
      strokeWeight(3);
      stroke(0);
      noFill();
      ellipse(xLeftRacquet, 100, 50, 80);
      ellipse(xRightRacquet, 400, 50, 80);
      
    //Position update
      xLeftRacquet = xLeftRacquet + speedLeftRacquet;
      xRightRacquet = xRightRacquet + speedRightRacquet;

    //Moving animation
      if ((xLeftRacquet < 120) || (xLeftRacquet > 380)) {
        speedLeftRacquet = speedLeftRacquet* -1;
      }
      if ((xRightRacquet < 120) || (xRightRacquet > 380)) {
        speedRightRacquet = speedRightRacquet* -1;
      }
      
    
    //Star generates and movement
      for (int starNumber = 0; starNumber < 50; starNumber = starNumber + 1) {
        starsLeftSideY[starNumber] = starsLeftSideY[starNumber] + speedStars[starNumber];
        starsLeftSideY[starNumber] = starsLeftSideY[starNumber] + speedStars[starNumber];
    
        if (starsLeftSideY[starNumber] > 500) {
          starsLeftSideY[starNumber] = 0;
        }
        if (starsLeftSideY[starNumber] > 500) {
          starsLeftSideY[starNumber] = 0;
        }
        
        widthLeftSideStars = random(4,8);
        heightLeftSideStars = random(4,8);
        widthRightSideStars = random(4,8);
        heightRightSideStars = random(4,8);
                
        fill(#FFDF00);
        strokeWeight(0);
        stroke(#FFDF00);
        ellipse(starsLeftSideX[starNumber], starsLeftSideY[starNumber], widthLeftSideStars, heightLeftSideStars);
        ellipse(starsRightSideX[starNumber], starsLeftSideY[starNumber], widthRightSideStars, heightRightSideStars);
      }
      
} //End draw ======================================================================================================
