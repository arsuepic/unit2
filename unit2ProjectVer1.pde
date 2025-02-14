//Aaron Su
//Block 2-4
//Feb. 13th, 




//Start variables==================================================================================================



  //Mountains
    int Mountain1,Mountain2,Mountain3;



//End variables====================================================================================================




void setup() { //Start setup=======================================================================================
  
  
  
  //Frame setup
    size(800,800);
  
  
  
  //Variables setup
    Mountain1 = 0;
    Mountain2 = 400;
    Mountain3 = 800;



} //End setup======================================================================================================




void draw() { //Start draw=========================================================================================
  
  
  
  //Sky
    background(#82c8e5);
  
  
  
  //Mountains
    stroke(150);
    strokeWeight(0);
    fill(150);
  
  
    ellipse(Mountain1,650,400,400);
    ellipse(Mountain2,650,400,400);
    ellipse(Mountain3,650,400,400);


  
    Mountain1 = Mountain1 - 5;
    Mountain2 = Mountain2 - 5;
    Mountain3 = Mountain3 - 5;


 
    if (Mountain1 < -200) {
      Mountain1 = 1000;
    }
    if (Mountain2 < -200) {
      Mountain2 = 1000;
    }
    if (Mountain3 < -200) {
      Mountain3 = 1000;
    }
  
  
  
  //Ground
    stroke(150);
    strokeWeight(0);
    fill(150);
  
  
  
} //End draw=======================================================================================================
