class Engine {

  float EPosXaddRadius;
  float EPosXaddRadiusSquare;
  float EOldX;
  float ENewX;

  float EposY;

  float ERadius;
  float EWidth;
  float WidthFactor;

  float EHeight;
  float HeightFactor;

  float tapering;
  float spacing;

  String shape;

  void NarrowTrapezium (int number, int posx, float posy, float randominConstruct) { 

    if (chosenColor == "Normal") {
      colorEngine();
    } 

    //sets the radius of the engine
    ERadius = randominConstruct/number;

    //sets the width of the engine
    EWidth = ERadius*2;

    //multiplies the variable with the radius to find the height 
    EHeight = ERadius*2;
    //generates a random variable to taper the top of the trapezium 
    tapering = ERadius/2;

    //sets the x position at the last possible x: 
    //by adding = (the original posx to center of page)+(all possible widths of engine = width multiplied by the number of iterations, divided by two)
    //+(the half of the top width to center everything)
    EOldX = posx + (EWidth*number/2) + (EWidth/4);

    //resets the additive x position to zero for the next cycle of generation
    EPosXaddRadius = 0;

    //sets the Y position by subtracting the height from the previous y position
    EposY = posy - EHeight;

    //goes through a loop to generate the incoming specified number of engines
    for (int i = 0; i<number; i++) {

      //collects the cumalitive width
      EPosXaddRadius = EPosXaddRadius + EWidth;

      //subtracts the cumalitive widths from the end point of the x position
      ENewX = EOldX - EPosXaddRadius;

      //draws a trapezium from the top left, at pos x, pos y, tapering addition to the bottom, height, and top width
      trapeziumtop(ENewX, EposY, tapering, EHeight, ERadius);
    }
  }

  void Square (int posx, float posy, float randominConstruct) { 
    if (chosenColor == "Normal") {
      colorEngine();
    } 

    //sets the radius of the engine
    ERadius = randominConstruct;

    //sets the width to control body width in rocket control
    EPosXaddRadius = ERadius*1.5;

    //sets the width of the engine
    EWidth = ERadius*1.5;

    //multiplies the variable with the radius to find the height 
    EHeight = ERadius*2;

    //sets the x position by subtracting galf of the engine: 
    ENewX = posx - EWidth/2;

    //sets the Y position by subtracting the height from the previous y position
    EposY = posy - EHeight;

    //draws a trapezium from the top left, at pos x, pos y, tapering addition to the bottom, height, and top width
    rect(ENewX, EposY, EWidth, EHeight);
  }

  void Squares (int number, int posx, float posy, float randominConstruct) { 
    if (chosenColor == "Normal") {
      colorEngine();
    } 

    //sets the radius of the engine
    ERadius = randominConstruct/number;
    //sets the width of the engine
    EWidth = ERadius*2;

    //multiplies the variable with the radius to find the height 
    EHeight = ERadius*1.5;
    //generates a random variable to add space between the squares 
    spacing = EWidth * 0.3;

    //sets the x position at the last possible x: 
    //by adding = (the original posx to center of page)+(all possible widths of engine = width multiplied by the number of iterations, divided by two)
    //+(quarter of spaceing subtracted from quarter of the width to center everything)
    EOldX = posx + (EWidth*number/2) + (spacing*number/2) + (EWidth/4) - (spacing/4);

    //resets the additive x position to zero for the next cycle of generation
    EPosXaddRadius = 0;
    EPosXaddRadiusSquare = 0;

    //sets the Y position by subtracting the height from the previous y position
    EposY = posy - EHeight;

    //goes through a loop to generate the incoming specified number of engines
    for (int i = 0; i<number; i++) {
      //collects the cumalitive width in one value with the spacing between them
      EPosXaddRadius = EWidth*number + spacing*(number-1);
      EPosXaddRadiusSquare = EPosXaddRadiusSquare + EWidth + spacing;
      
      //subtracts the cumalitive widths from the end point of the x position
      ENewX = EOldX - EPosXaddRadiusSquare;

      //draws a rect from the top left, at pos x, pos y, width, height
      rect(ENewX, EposY, EWidth, EHeight);
    }
  }

  void UpsideDownTriangle (int posx, float posy, float randominConstruct) { 
    if (chosenColor == "Normal") {
      colorEngine();
    } 

    //sets the radius of the engine
    ERadius = randominConstruct;
    //sets the width of the engine
    EWidth = ERadius*2;
    //sets the width to control body width in rocket control
    EPosXaddRadius = EWidth;  

    //multiplies the variable with the radius to find the height 
    EHeight = ERadius*2;
    //variable to taper the top of the trapezium 
    tapering = EWidth*0.35;

    //sets the x position at the last possible x: 
    //by adding = (the original posx to center of page)+(all possible widths of engine = width multiplied by the number of iterations, divided by two)
    //+(the half of the top width to center everything)
    EOldX = posx + (EWidth/2) + (EWidth/4);

    //sets the Y position by subtracting the height from the previous y position
    EposY = posy - EHeight - EHeight/2;   

    //draws a trapezium from the top left, at pos x, pos y, tapering addition to the bottom, height, and top width
    //top trapezium
    trapeziumtop(posx - ERadius, EposY, -tapering, EHeight, EWidth) ;
    //bottom trapezium
    trapeziumtop(posx - (ERadius-tapering), EposY+EHeight, tapering, EHeight/2, EWidth-(tapering*2)) ;
  }
}
