class Nose {

  //universal y position radius
  float X;

  float NposY;

  float NRadius;
  float NHeight;
  float HeightFactor;

  float tapering;
  float percentage;

  float NPosYaddHeight;
  float NOldY;
  float NNewY;

  float trapeziumwidth;
  float needleheightscale;
  float rectneedleY;
  float needleX;
  float needleWidth;
  float needleY;

  float scale;
  float heightoverlapfactor;

  void Triangle (int posx, float BPosY, float BRadius) { 

    if (chosenColor == "Normal") {
      colorNoseOne();
    }

    X = posx;
    //HeightFactor = random(3, 4);

    NRadius = BRadius;

    NHeight = NRadius*2;

    NposY = BPosY - NHeight;

    //triangle(x,y, x-radius , y +height, x+radius, y+height)
    triangle(X, NposY, X - NRadius, NposY + NHeight, X+ NRadius, NposY + NHeight);
  }

  void TrianglewithNeedle (int posx, float BPosY, float BRadius, float randomNeedleHeight) { 

    if (chosenColor == "Normal") {
      colorNoseOne();
    }

    X = posx;

    NRadius = BRadius;
    NHeight = NRadius*2;

    NposY = BPosY - NHeight;

    //needle
    line(X, NposY, X, NposY-(NHeight*randomNeedleHeight));

    //triangle(x,y, x-radius , y +height, x+radius, y+height)
    triangle(X, NposY, X - NRadius, NposY + NHeight, X+ NRadius, NposY + NHeight);
  }

  void NarrowTriangle (int posx, float BPosY, float BRadius, float randomNoseHeight) { 

    if (chosenColor == "Normal") {
      colorNoseOne();
    }

    X = posx;
    HeightFactor = randomNoseHeight;

    NRadius = BRadius;

    NHeight = NRadius*HeightFactor;

    NposY = BPosY - NHeight;

    //triangle(x,y, x-radius , y +height, x+radius, y+height)
    triangle(X, NposY, X - NRadius, NposY + NHeight, X+ NRadius, NposY + NHeight);
  }

  void NarrowTrianglewithNeedle (int posx, float BPosY, float BRadius, float randomNoseHeight) { 

    if (chosenColor == "Normal") {
      colorNoseOne();
    }

    X = posx;
    HeightFactor = randomNoseHeight;

    NRadius = BRadius;

    NHeight = NRadius*HeightFactor;

    NposY = BPosY - NHeight;

    //needle
    line(X, NposY, X, NposY-(NHeight));

    //triangle(x,y, x-radius , y +height, x+radius, y+height)
    triangle(X, NposY, X - NRadius, NposY + NHeight, X+ NRadius, NposY + NHeight);
  }

  void TriangleCone (int posx, float BPosY, float BRadius) {


    X = posx;
    NRadius = BRadius;

    NHeight = NRadius;
    NposY = BPosY - NHeight;

    if (chosenColor == "Normal") {
      colorNoseOne();
    }

    beginShape();
    vertex(X - NHeight/2, NposY);
    vertex(X - NHeight, NposY + NHeight);
    vertex(X + NHeight, NposY + NHeight);
    vertex(X + NHeight/2, NposY);
    endShape(CLOSE);

    if (chosenColor == "Normal") {
      colorNoseTwo();
    }

    triangle(X, NposY - NHeight, X - NHeight/2, NposY, X + NHeight/2, NposY );
  }

  void TriangleConewithNeedle (int posx, float BPosY, float BRadius, float randomNeedleHeight) {

    X = posx;
    NRadius = BRadius;

    NHeight = NRadius;
    NposY = BPosY - NHeight;

    if (chosenColor == "Normal") {
      colorNoseOne();
    }

    beginShape();
    vertex(X - NHeight/2, NposY);
    vertex(X - NHeight, NposY + NHeight);
    vertex(X + NHeight, NposY + NHeight);
    vertex(X + NHeight/2, NposY);
    endShape(CLOSE);

    if (chosenColor == "Normal") {
      colorNoseTwo();
    }

    triangle(X, NposY - NHeight, X - NHeight/2, NposY, X + NHeight/2, NposY );
    //needle
    line(X, NposY - NHeight, X, NposY-(NHeight*randomNeedleHeight));
  }

  void TwoEqualStackedTriangles (int posx, float BPosY, float BRadius, float randomNoseHeight) { 

    if (chosenColor == "Normal") {
      colorNoseOne();
    }

    X = posx;
    NRadius = BRadius;

    NHeight = NRadius*2;
    NposY = BPosY - NHeight;

    //triangle(x,y, x-radius , y +height, x+radius, y+height)
    triangle(X, NposY, X - NRadius, NposY + NHeight, X+ NRadius, NposY + NHeight);
    float scalefactor = NHeight/randomNoseHeight;
    triangle(X, NposY-scalefactor, X - scalefactor, NposY + scalefactor, X+ scalefactor, NposY + scalefactor);
  }

  void TwoEqualStackedTriangleswithNeedle (int posx, float BPosY, float BRadius, float randomNeedleHeight, float randomNoseHeight) {

    X = posx;
    NRadius = BRadius;
    HeightFactor = randomNeedleHeight;

    NHeight = NRadius*2;
    NposY = BPosY - NHeight;

    if (chosenColor == "Normal") {
      colorNoseOne();
    } 
    //triangle(x,y, x-radius , y +height, x+radius, y+height)
    triangle(X, NposY, X - NRadius, NposY + NHeight, X+ NRadius, NposY + NHeight);

    if (chosenColor == "Normal") {
      colorNoseTwo();
    }
    float scalefactor = NHeight/randomNoseHeight;
    line(X, NposY-scalefactor, X, BPosY-(NHeight*HeightFactor)); 
    triangle(X, NposY-scalefactor, X - scalefactor, NposY + scalefactor, X+ scalefactor, NposY + scalefactor);
  }

  void NarrowTrapeziumwithNeedle (int number, int posx, float BPosY, float BRadius, float randomNoseHeight2, float randomNeedleHeight) { 

    if (chosenColor == "Normal") {
      colorNoseOne();
    }

    X = posx;
    NRadius = BRadius;

    NPosYaddHeight = 0;
    HeightFactor = randomNoseHeight2;
    NHeight = NRadius*HeightFactor;
    NOldY = BPosY - NHeight; 

    tapering = NRadius*0.9;
    scale = 0.15;
    heightoverlapfactor = 0.7;

    for (int i = 0; i<number; i++) {

      NPosYaddHeight = NPosYaddHeight + (NHeight*heightoverlapfactor*i); //limit of two stacks, adding more create a lot of negative space between the layers
      NNewY = NOldY - NPosYaddHeight;

      beginShape();
      //top left
      vertex(X - NRadius + tapering, NNewY);
      //bottom left
      vertex(X - NRadius + (NRadius*scale*i), NNewY + NHeight);
      //bottom right
      vertex(X + NRadius - (NRadius*scale*i), NNewY + NHeight);
      //top right
      vertex(X + NRadius - tapering, NNewY);
      endShape(CLOSE);
    }

    trapeziumwidth = dist(X - NRadius + tapering, NNewY, X + NRadius - tapering, NNewY);
    needleheightscale = randomNeedleHeight*10;
    rectneedleY = NNewY - trapeziumwidth*needleheightscale + 2;
    rect(X-trapeziumwidth/2, rectneedleY, trapeziumwidth, trapeziumwidth*needleheightscale);

    needleX = X;
    needleWidth = trapeziumwidth;
    needleY = rectneedleY - needleWidth*2;
    triangle(needleX, needleY, needleX - needleWidth/2, needleY + needleWidth*2, needleX + needleWidth/2, needleY + needleWidth*2);
  }

  void CurvedTriangle (int posx, float BPosY, float BRadius, float randomNoseHeight) { 

    if (chosenColor == "Normal") {
      colorNoseOne();
    }

    X = posx;

    HeightFactor = randomNoseHeight;

    NHeight = BRadius*HeightFactor;
    NRadius = BRadius;

    NposY = BPosY - NHeight;

    float Anchor1X = X;
    float Anchor1Y = NposY; //+height

    float Anchor2X = X + NRadius;
    float Anchor2Y = BPosY;

    float Control1X = X + NRadius/2;
    float Control1Y = Anchor1Y + NHeight/4;

    float Control2X = Anchor2X;
    float Control2Y = Anchor2Y - NHeight/2;
    ////
    float Anchor1Xopp = X;
    float Anchor1Yopp = NposY;//+height

    float Anchor2Xopp = X - NRadius;
    float Anchor2Yopp = BPosY;

    float Control1Xopp = X - NRadius/2;
    float Control1Yopp = Anchor1Y + NHeight/4;

    float Control2Xopp = Anchor2Xopp;
    float Control2Yopp = Anchor2Y -  NHeight/2;

    beginShape();
    vertex(Anchor1X, Anchor1Y);
    bezierVertex(
      Control1X, Control1Y, 
      Control2X, Control2Y, 
      Anchor2X, Anchor2Y
      ); 

    vertex(Anchor2Xopp, Anchor2Yopp);
    bezierVertex(
      Control2Xopp, Control2Yopp, 
      Control1Xopp, Control1Yopp, 
      Anchor1Xopp, Anchor1Yopp
      ); 

    endShape(CLOSE);
  }
}
