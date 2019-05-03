class Smoke {

  float SNewX;
  float SNewY;

  float SRadius;
  float SWidth;

  float SHeight;
  float HeightFactor;

  float tapering;
  int step;
  int counter;

  void CircleSmoke (int number, int posx, float posy, float EWidth, float randominSmokeStep) {

    if (chosenColor == "Normal") {
      colorSmokeTwo();
    } 

    //draws a trapezium to connect the smoke to the engine
    trapeziumtop(posx - EWidth/2, posy, EWidth/5, EWidth/2, EWidth);

    //sets the width of the smoke
    SWidth = EWidth*2;

    //starting y pos = posy + sligtly more than half of the circle, to shift the smoke down
    SNewY = posy + (SWidth*0.55);

    //intialize the step and counter variables
    step = 0;
    counter = 0;

    //for five layers of smoke circles at intervals of the smoke radii
    for (int y = int(SNewY); y < SNewY+SWidth*3; y+=SWidth/2) {
      //for each circle drawn at that y pos, a step is added to the x position to shift the smoke circles
      for (int i = 0; i<number; i++) {
        //drawing the five circles at those different x positios 

        //shifted circles
        int SposLeftX = posx - step ; 
        int SposRightX = posx + step ; 
        ellipse(SposLeftX, y, SWidth, SWidth);
        ellipse(SposRightX, y, SWidth, SWidth);
        //half-shifted circles
        int SposLeftXHalf = posx - step/2 ; 
        int SposRightXHalf = posx + step/2 ;
        ellipse(SposLeftXHalf, y, SWidth, SWidth);
        ellipse(SposRightXHalf, y, SWidth, SWidth);
        //center
        ellipse(posx, y, SWidth, SWidth);
      }
      //counter is added to every y layer, so the distribution of the shift increases each loop
      counter ++;
      float stepRandom = randominSmokeStep;
      step = step + int((SWidth*stepRandom)*counter);
    }
  }

  void CircleSmokeGaussian (int number, int posx, float posy, float EWidth, long randomSeedNumberSmoke) {

    if (chosenColor == "Normal") {
      colorSmokeTwo();
    } 

    //draws a trapezium to connect the smoke to the engine
    trapeziumtop(posx - EWidth/2, posy, EWidth/5, EWidth/2, EWidth);

    SRadius = EWidth;
    //set the smoke width
    SWidth = EWidth*2;
    //set the smoke y position
    SNewY = posy+SRadius;

    randomSeed(randomSeedNumberSmoke);
    //for the number of circles to generate
    for (int i = 0; i<number; i++) {
      SNewX = posx + randomGaussian()*i*0.8; //bigger the number the bigger the distribution
      ellipse(SNewX, SNewY+SRadius*i/SRadius, SWidth, SWidth);
    }
  }

  void StraightRectSmoke (int posx, float posy, float EWidth, float randominSmoke) {

    //sets the width of the smoke
    SWidth = EWidth;
    //sets the tapering of the smoke
    tapering = randominSmoke;

    if (chosenColor == "Normal") {
      colorSmokeOne();
    } 
    //draws a trapezium as the feathering of the smoke
    trapeziumtop(posx - SWidth/2, posy, tapering, height/10, SWidth);

    if (chosenColor == "Normal") {
      colorSmokeTwo();
    } 
    //draws a rect as the concentration of the smoke
    rect(posx-SWidth/2, posy, SWidth, baseY);
  }

  void CurvedRectSmoke (int posx, float posy, float EWidth, float randominSmoke) { 

    //sets the width of the smoke
    SWidth = EWidth;

    //sets the height factor of the smoke
    HeightFactor = randominSmoke;
    //multiplies width with factor
    SHeight = SWidth*HeightFactor;

    if (chosenColor == "Normal") {
      colorSmokeOne();
    } 
    arc(posx, posy, SWidth, SWidth*8, radians(0), radians(180), PIE);
    arc(posx, posy, SWidth, SWidth*6, radians(0), radians(180), PIE);
    if (chosenColor == "Normal") {
      colorSmokeTwo();
    }  
    arc(posx, posy, SWidth, SWidth*4, radians(0), radians(180), PIE);
  }
}
