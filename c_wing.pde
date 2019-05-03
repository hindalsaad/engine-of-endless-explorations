class Wing {

  float WposX;

  float WposY;
  float WPosYaddHeight;
  float WNewY;
  float WOldY;

  float WRadius;
  float WWidth;
  float RadiusFactor;

  float WHeight;
  float HeightFactor;

  void Triangle (int posx, float posy, float engineRadius, float BodyHeight, float randominWingHeight) { 

    if (chosenColor == "Normal") {
      colorWing();
    } 

    WRadius = engineRadius*3;
    HeightFactor = randominWingHeight;
    WHeight = BodyHeight*HeightFactor;

    WposX= posx;
    WposY = posy - WHeight;

    //left wing
    float LeftX = WposX -(engineRadius);
    triangle(LeftX, WposY, LeftX, WposY + WHeight, LeftX-WRadius, WposY + WHeight);

    //right wing
    float RightX = WposX +(engineRadius);
    triangle(RightX, WposY, RightX, WposY + WHeight, RightX+WRadius, WposY + WHeight);
  }

  void TrianglewithSmallRect (int posx, float posy, float engineRadius, float BodyHeight, float randominWingHeight) { 

    if (chosenColor == "Normal") {
      colorWing();
    } 

    WRadius = engineRadius*3;
    HeightFactor = randominWingHeight;
    WHeight = BodyHeight*HeightFactor;

    WposX = posx;
    WposY = posy - WHeight;

    //left wing
    float LeftX = WposX - engineRadius;
    triangle(LeftX, WposY, LeftX, WposY + WHeight, LeftX-WRadius, WposY + WHeight);
    rect(LeftX-WRadius, WposY + WHeight - WRadius/2, WRadius, WRadius/2);

    //right wing
    float RightX = WposX + engineRadius;
    triangle(RightX, WposY, RightX, WposY + WHeight, RightX+WRadius, WposY + WHeight);
    rect(RightX, WposY + WHeight - WRadius/2, WRadius, WRadius/2);
  }

  void NarrowCurve (int posx, float posy, float engineRadius, float BodyHeight, float randominWingHeightArc) { 

    if (chosenColor == "Normal") {
      colorWing();
    } 

    WposX = posx;
    WposY = posy;

    RadiusFactor = randominWingHeightArc;
    WRadius = engineRadius;

    WHeight = BodyHeight*1.2;

    //left wing
    arc(WposX - WRadius, WposY, WRadius*RadiusFactor, WHeight, radians(180), radians(270), PIE);
    //right wing
    arc(WposX + WRadius, WposY, WRadius*RadiusFactor, WHeight, radians(270), radians(360), PIE);
  }

  void NarrowCurveBlock (int posx, float enginePosY, float engineRadius, float BodyHeight, float randominWingHeight) { 

    if (chosenColor == "Normal") {
      colorWing();
    } 

    WRadius = engineRadius;
    WWidth =  WRadius*2;
    HeightFactor = randominWingHeight;
    WHeight = BodyHeight*HeightFactor;

    WposX = posx - WRadius;
    WposY = enginePosY - WHeight;

    //left block
    rect(WposX-WWidth, WposY, WWidth, WHeight);

    //right block
    rect(WposX+WWidth, WposY, WWidth, WHeight);

    ////left wing
    arc(WposX, WposY + 0.5, WWidth*2, WWidth*2, radians(180), radians(270), PIE);

    ////right wing
    arc(WposX+WWidth, WposY + 0.5, WWidth*2, WWidth*2, radians(270), radians(360), PIE);
  }

  void FourPointTrapeziumBottomSkew(int posx, float BPosY, float BRadius, float BodyHeight, float randominWingHeight) {

    if (chosenColor == "Normal") {
      colorWing();
    } 

    WposX = posx;
    WRadius = BRadius;
    float WidthFactor = 4;
    HeightFactor = randominWingHeight;
    float tapering = 0.1;
    float taperingtop = 0.5;
    WHeight = BodyHeight*HeightFactor;

    WNewY = BPosY - WHeight; 

    //left side
    beginShape();
    //top left
    vertex(WposX- WRadius, WNewY);
    //bottom left
    vertex(WposX- WRadius, WNewY + WHeight );
    //bottom right
    vertex(WposX- WRadius*WidthFactor, WNewY + WHeight + WHeight*tapering);
    //top right
    vertex(WposX- WRadius*WidthFactor, WNewY+ WHeight*taperingtop);
    endShape(CLOSE);

    //right side
    beginShape();
    //top left
    vertex(WposX+ WRadius, WNewY);
    //bottom left
    vertex(WposX+ WRadius, WNewY + WHeight);
    //bottom right
    vertex(WposX+ WRadius*WidthFactor, WNewY + WHeight+ WHeight*tapering);
    //top right
    vertex(WposX+ WRadius*WidthFactor, WNewY+ WHeight*taperingtop);
    endShape(CLOSE);
  }

  void FourPointTrapeziumTopSkew(int posx, float BPosY, float BRadius, float BodyHeight, float randominWingHeight) {

    if (chosenColor == "Normal") {
      colorWing();
    } 

    WposX= posx;
    WRadius = BRadius;
    float WidthFactor = 4;
    HeightFactor = randominWingHeight;
    float tapering = 0.1;
    float taperingbottom = 0.4;
    WHeight = BodyHeight*HeightFactor;

    WNewY = BPosY - WHeight; 

    //left side
    beginShape();
    //top left
    vertex(WposX- WRadius, WNewY);
    //bottom left
    vertex(WposX- WRadius, WNewY + WHeight );
    //bottom right
    vertex(WposX- WRadius*WidthFactor, WNewY + WHeight - WHeight*tapering);
    //top right
    vertex(WposX- WRadius*WidthFactor, WNewY+ WHeight*taperingbottom);
    endShape(CLOSE);

    //right side
    beginShape();
    //top left
    vertex(WposX+ WRadius, WNewY);
    //bottom left
    vertex(WposX+ WRadius, WNewY + WHeight);
    //bottom right
    vertex(WposX+ WRadius*WidthFactor, WNewY + WHeight - WHeight*tapering);
    //top right
    vertex(WposX+ WRadius*WidthFactor, WNewY+ WHeight*taperingbottom);
    endShape(CLOSE);
  }


  void FourPointTriangle(int posx, float BPosY, float BRadius, float BodyHeight, float randominWingHeight) {

    if (chosenColor == "Normal") {
      colorWing();
    } 

    WposX= posx;
    WRadius = BRadius;
    float WidthFactor = 2;
    HeightFactor = randominWingHeight;
    WHeight = BodyHeight*HeightFactor;

    WNewY = BPosY - WHeight; 

    //left side
    beginShape();
    //top left
    vertex(WposX- WRadius, WNewY);
    //bottom left
    vertex(WposX- WRadius, WNewY + WHeight );
    //bottom right
    vertex(WposX- WRadius*WidthFactor, WNewY + WHeight);
    //top right
    vertex(WposX- WRadius*WidthFactor*1.5, WNewY+ WHeight*0.75);
    endShape(CLOSE);

    //right side
    beginShape();
    //top left
    vertex(WposX+ WRadius, WNewY);
    //bottom left
    vertex(WposX+ WRadius, WNewY + WHeight);
    //bottom right
    vertex(WposX+ WRadius*WidthFactor, WNewY + WHeight);
    //top right
    vertex(WposX+ WRadius*WidthFactor*1.5, WNewY + WHeight*0.75);
    endShape(CLOSE);
  }
}
