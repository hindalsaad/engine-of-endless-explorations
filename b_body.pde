class Body {

  float X;

  float BOldY;
  float BNewY;

  float Height;
  float bottomWidth;
  float BRadius;
  float BWidth;

  float StripeWidth;
  float StripeHeight;

  float BPosYaddHeight;

  float tapering;

  void NarrowBody (int number, int posx, float enginePosY, float engineRadius, float randominBodyHeight) { 

    X = posx;
    BOldY = enginePosY;

    BRadius = engineRadius;
    //reset additive height for y pos
    BPosYaddHeight = 0;

    for (int i = 0; i<number; i++) {

      if (chosenColor == "Normal") {
        if (i%2 == 0 ) {
          colorBodyOne();
        } else {
          colorBodyTwo();
        }
      }

      if (number == 1 ) {
        Height = randominBodyHeight*1.5;
      } else {
        if (i%2 == 0) {
          Height = randominBodyHeight/2;
        } else {
          Height = randominBodyHeight/4;
        }
      }
      BPosYaddHeight = BPosYaddHeight + Height;
      BNewY = BOldY - BPosYaddHeight;
      rect(X-BRadius, BNewY, BRadius*2, Height);
      bottomWidth = BRadius*2;
    }
  }

  void NarrowBodyCheckeredTop (int posx, float enginePosY, float engineRadius, float randominBodyHeight) { 

    X = posx;
    BOldY = enginePosY;

    BRadius = engineRadius;
    //reset additive height for y pos
    BPosYaddHeight = 0;
    Height = randominBodyHeight*1.3;
    BPosYaddHeight = BPosYaddHeight + Height;
    BNewY = BOldY - BPosYaddHeight;
    BWidth = BRadius*2;
    StripeWidth = BWidth/5;
    StripeHeight = Height/10;
    bottomWidth = BRadius*2;

    //body
    if (chosenColor == "Normal") {
      colorBodyOne();
    }
    rect(X-BRadius, BNewY, BWidth, Height);
    //stripe two
    rect(X-BRadius + StripeWidth*1, BNewY + Height/4, StripeWidth, StripeHeight);
    //stripe four
    rect(X-BRadius + StripeWidth*3, BNewY + Height/4, StripeWidth, StripeHeight);

    //stripe box one
    rect(X-BRadius + StripeWidth*0, BNewY + Height/4 - StripeWidth, StripeWidth, StripeWidth);
    //stripe box three
    rect(X-BRadius + StripeWidth*2, BNewY + Height/4 - StripeWidth, StripeWidth, StripeWidth);
    //stripe box five
    rect(X-BRadius + StripeWidth*4, BNewY + Height/4 - StripeWidth, StripeWidth, StripeWidth);

    //stripe
    if (chosenColor == "Normal") {
      colorBodyTwo();
    }
    //stripe left to right
    //stripe one
    rect(X-BRadius + StripeWidth*0, BNewY + Height/4, StripeWidth, StripeHeight);
    //stripe three
    rect(X-BRadius + StripeWidth*2, BNewY + Height/4, StripeWidth, StripeHeight);
    //stripe five
    rect(X-BRadius + StripeWidth*4, BNewY + Height/4, StripeWidth, StripeHeight);

    //stripe boxes left to right
    //stripe box two
    rect(X-BRadius + StripeWidth*1, BNewY + Height/4 - StripeWidth, StripeWidth, StripeWidth);
    //stripe box four
    rect(X-BRadius + StripeWidth*3, BNewY + Height/4 - StripeWidth, StripeWidth, StripeWidth);
  }

  void NarrowBodyCheckeredBottom (int posx, float enginePosY, float engineRadius, float randominBodyHeight) { 

    X = posx;
    BOldY = enginePosY;

    BRadius = engineRadius;
    //reset additive height for y pos
    BPosYaddHeight = 0;
    Height = randominBodyHeight*1.3;
    BPosYaddHeight = BPosYaddHeight + Height;
    BNewY = BOldY - BPosYaddHeight;
    BWidth = BRadius*2;
    StripeWidth = BWidth/5;
    StripeHeight = Height/10;
    bottomWidth = BRadius*2;

    //body
    if (chosenColor == "Normal") {
      colorBodyOne();
    }
    rect(X-BRadius, BNewY, BWidth, Height);
    //stripe two
    rect(X-BRadius + StripeWidth*1, BNewY + Height/4, StripeWidth, StripeHeight);
    //stripe four
    rect(X-BRadius + StripeWidth*3, BNewY + Height/4, StripeWidth, StripeHeight);

    //stripe box one
    rect(X-BRadius + StripeWidth*0, BNewY + Height/4 + StripeHeight, StripeWidth, StripeWidth);
    //stripe box three
    rect(X-BRadius + StripeWidth*2, BNewY + Height/4 + StripeHeight, StripeWidth, StripeWidth);
    //stripe box five
    rect(X-BRadius + StripeWidth*4, BNewY + Height/4 + StripeHeight, StripeWidth, StripeWidth);

    //stripe
    if (chosenColor == "Normal") {
      colorBodyTwo();
    }
    //stripe left to right
    //stripe one
    rect(X-BRadius + StripeWidth*0, BNewY + Height/4, StripeWidth, StripeHeight);
    //stripe three
    rect(X-BRadius + StripeWidth*2, BNewY + Height/4, StripeWidth, StripeHeight);
    //stripe five
    rect(X-BRadius + StripeWidth*4, BNewY + Height/4, StripeWidth, StripeHeight);

    //stripe boxes left to right

    //stripe box two
    rect(X-BRadius + StripeWidth*1, BNewY + Height/4 + StripeHeight, StripeWidth, StripeWidth);
    //stripe box four
    rect(X-BRadius + StripeWidth*3, BNewY + Height/4 + StripeHeight, StripeWidth, StripeWidth);
  }

  void NarrowBodyStripe (int posx, float enginePosY, float engineRadius, float randominBodyHeight) { 

    X = posx;
    BOldY = enginePosY;

    BRadius = engineRadius;
    //reset additive height for y pos
    BPosYaddHeight = 0;
    Height = randominBodyHeight*1.3;
    BPosYaddHeight = BPosYaddHeight + Height;
    BNewY = BOldY - BPosYaddHeight;

    bottomWidth = BRadius*2;

    //body
    if (chosenColor == "Normal") {
      colorBodyOne();
    }
    rect(X-BRadius, BNewY, BRadius*2, Height);

    //stripe
    if (chosenColor == "Normal") {
      colorBodyTwo();
    }
    rect(X-BRadius, BNewY + Height/4, BRadius*2, Height/30);
  }

  void NarrowBodyDoubleStripe (int posx, float enginePosY, float engineRadius, float randominBodyHeight) { 

    X = posx;
    BOldY = enginePosY;

    BRadius = engineRadius;
    //reset additive height for y pos
    BPosYaddHeight = 0;
    Height = randominBodyHeight*1.3;
    BPosYaddHeight = BPosYaddHeight + Height;
    BNewY = BOldY - BPosYaddHeight;

    bottomWidth = BRadius*2;

    //body
    if (chosenColor == "Normal") {
      colorBodyOne();
    }
    rect(X-BRadius, BNewY, BRadius*2, Height);

    //stripe
    if (chosenColor == "Normal") {
      colorBodyTwo();
    }
    rect(X-BRadius, BNewY + Height/4, BRadius*2, Height/30);
    rect(X-BRadius, BNewY + Height/4 + (Height/30)*2, BRadius*2, Height/30);
  }

  void RectandTrapezium (int posx, float enginePosY, float engineRadius, float randominBodyHeight) { 

    BPosYaddHeight = 0;

    X = posx;
    BOldY = enginePosY;

    BWidth = engineRadius;
    Height = randominBodyHeight;

    BNewY = BOldY - Height;

    if (chosenColor == "Normal") {
      colorBodyOne();
    } 
    rect(X-BWidth, BNewY, BWidth*2, Height);

    if (chosenColor == "Normal") {
      colorBodyTwo();
    } 
    tapering = Height/40;
    trapeziumbottom(X+BWidth, BNewY, -tapering, Height/12, BWidth*2);
    BRadius = (BWidth*2 - tapering*2)/2;

    if (chosenColor == "Normal") {
      colorBodyOne();
    } 
    rect(X-BRadius, BNewY - Height/12 - Height/4, BRadius*2, Height/4);

    BPosYaddHeight = Height + Height/12 + Height/4;
    BNewY = enginePosY - BPosYaddHeight;
  }

  void RectandTrapeziumTwo (int posx, float enginePosY, float engineRadius, float randominBodyHeight) { 

    BPosYaddHeight = 0;

    X = posx;
    BOldY = enginePosY;

    BWidth = engineRadius;
    Height = randominBodyHeight;

    BNewY = BOldY - Height;

    if (chosenColor == "Normal") {
      colorBodyOne();
    } 
    rect(X-BWidth, BNewY, BWidth*2, Height);

    if (chosenColor == "Normal") {
      colorBodyTwo();
    } 
    tapering = Height/40;
    trapeziumbottom(X+BWidth, BNewY, -tapering, Height/4, BWidth*2);
    BRadius = (BWidth*2 - tapering*2)/2;

    if (chosenColor == "Normal") {
      colorBodyOne();
    } 
    rect(X-BRadius, BNewY - Height/4 - Height/4, BRadius*2, Height/4);

    BPosYaddHeight = Height + Height/4 + Height/4;
    BNewY = enginePosY - BPosYaddHeight;
  }

  void rectStripeOne () {
  }

  void rectStripeTwo () {
  }
}
