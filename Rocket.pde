String[] smokeTypes = {"", "CircleSmoke", "CircleSmokeGaussian", "StraightRectSmoke", "CurvedRectSmoke"};
String chosenSmoke;

String[] engineTypes = {"OneNarrowTrapezium", "TwoNarrowTrapezium", "Square", "Squares", "UpsideDownTriangle"};
String chosenEngine;

String[] bodyTypes = {"NarrowBody", "NarrowBodyCheckeredTop", "NarrowBodyCheckeredBottom", "NarrowBodyStripe", "NarrowBodyDoubleStripe", "RectandTrapezium", "RectandTrapeziumTwo"};
String chosenBody;

String[] wingTypes = {"Triangle", "TrianglewithSmallRect", "NarrowCurve", "NarrowCurveBlock", "FourPointTrapeziumBottomSkew", 
  "FourPointTrapeziumTopSkew", "FourPointTriangle"};
String chosenWing;

String[] noseTypes = {"Triangle", "TrianglewithNeedle", "NarrowTriangle", "NarrowTrianglewithNeedle", "TriangleCone", "TriangleConewithNeedle", 
  "TwoEqualStackedTriangles", "TwoEqualStackedTriangleswithNeedle", "NarrowTrapeziumwithNeedle", "CurvedTriangle"};
String chosenNose;

String chosenColor = "Normal";

float EngineCurrentX;
float EngineCurrentY;
float EngineCurrentH;

float randominConstructWidth;
float randominConstructHeight;

float randominWingHeight;
float randominWingHeightArc;

float randominBodyHeight;
float randominBodyStages;

float randominSmoke;
float randominSmokeStep;
long randomSeedNumberSmoke;

float randomNeedleHeight;
float randomNoseHeight;
float randomNoseHeight2;

int randomEngineNumber;
int randomEngineNumber2;

class Rocket {

  Engine e1 = new Engine();
  Engine e2 = new Engine();
  Smoke s1 = new Smoke();
  Wing w1 = new Wing();
  Body b1 = new Body();
  Nose n1 = new Nose();

  void Construct(int posx, float posy, Boolean randominKeyPressConstruct) {
    createBG();

    if (randominKeyPressConstruct == true) {
      randominConstructWidth = random(width*0.01, width*0.02);
      randominWingHeight = random(0.4, 0.6);
      randominWingHeightArc = random(2, 4);

      randominBodyStages = random(1, 4);
      randominBodyHeight = random(width*0.2, width*0.3);

      randominSmoke = random(10, 20);
      randominSmokeStep = random(0, .3);
      randomSeedNumberSmoke = millis();

      randomNeedleHeight = random(2, 4);
      randomNoseHeight = random(3, 5);
      randomNoseHeight2 = random(1, 2);

      randomEngineNumber = round(random(3, 5));
      randomEngineNumber2 = round(random(2, 4));
    }     
    if (randominKeyPressConstruct == false) {
      randominConstructWidth = width*0.02;
      randominWingHeight = 0.6;
      randominWingHeightArc = 4;

      randominBodyStages = 3;
      randominBodyHeight = width*0.4;

      randominSmoke = 15;
      randominSmokeStep = .25;
      randomSeedNumberSmoke = 1;

      randomNeedleHeight = 3;
      randomNoseHeight = 4;
      randomNoseHeight2 = 1.5;

      randomEngineNumber = 3;
      randomEngineNumber2 = 2;
    }


    if (chosenColor == "XRay") {
      colorXRay();
    } 

    ////////ENGINE
    chosenEngine = engineTypes[engine];

    if (chosenEngine == "OneNarrowTrapezium") {
      e2.NarrowTrapezium(randomEngineNumber-2, posx, posy, randominConstructWidth);
    } 
    if (chosenEngine == "TwoNarrowTrapezium") {
      e1.NarrowTrapezium(randomEngineNumber, posx, posy, randominConstructWidth);
      e2.NarrowTrapezium(randomEngineNumber-2, posx, e1.EposY, randominConstructWidth);
    } 
    if (chosenEngine == "Square") {
      e2.Square(posx, posy, randominConstructWidth);
    } 
    if (chosenEngine == "Squares") {
      e2.Squares(randomEngineNumber2, posx, posy, randominConstructWidth);
    } 
    if (chosenEngine == "UpsideDownTriangle") {
      e2.UpsideDownTriangle(posx, posy, randominConstructWidth);
      //e2.Square(randomEngineNumber2, posx, posy+e1.EHeight);
    } 

    ////////SMOKE
    chosenSmoke = smokeTypes[smoke];

    if (chosenSmoke == "CircleSmoke") {
      s1.CircleSmoke(30, posx, posy, e2.EPosXaddRadius, randominSmokeStep);
      //baseY =  height - height/10;
    }
    if (chosenSmoke == "CircleSmokeGaussian") {
      s1.CircleSmokeGaussian(85, posx, posy, e2.EPosXaddRadius, randomSeedNumberSmoke);
    }
    if (chosenSmoke == "StraightRectSmoke") {
      s1.StraightRectSmoke(posx, posy, e2.EPosXaddRadius, randominSmoke);
    }
    if (chosenSmoke == "CurvedRectSmoke") {
      s1.CurvedRectSmoke(posx, posy, e2.EPosXaddRadius, randominSmoke);
    }


    ////////BODY
    chosenBody = bodyTypes[body];

    if (chosenBody == "NarrowBody") {
      b1.NarrowBody(int(randominBodyStages), posx, e2.EposY, e2.EPosXaddRadius/2, randominBodyHeight);
    }
    if (chosenBody == "NarrowBodyStripe") {
      b1.NarrowBodyStripe(posx, e2.EposY, e2.EPosXaddRadius/2, randominBodyHeight);
    }
    if (chosenBody == "NarrowBodyDoubleStripe") {
      b1.NarrowBodyDoubleStripe(posx, e2.EposY, e2.EPosXaddRadius/2, randominBodyHeight);
    }
    if (chosenBody == "NarrowBodyCheckeredTop") {
      b1.NarrowBodyCheckeredTop(posx, e2.EposY, e2.EPosXaddRadius/2, randominBodyHeight);
    }
    if (chosenBody == "NarrowBodyCheckeredBottom") {
      b1.NarrowBodyCheckeredBottom(posx, e2.EposY, e2.EPosXaddRadius/2, randominBodyHeight);
    }
    if (chosenBody == "RectandTrapezium") {
      b1.RectandTrapezium(posx, e2.EposY, e2.EPosXaddRadius/2, randominBodyHeight);
    }
    if (chosenBody == "RectandTrapeziumTwo") {
      b1.RectandTrapeziumTwo(posx, e2.EposY, e2.EPosXaddRadius/2, randominBodyHeight);
    }

    ////////WING
    chosenWing = wingTypes[wing];

    if (chosenWing == "Triangle") {
      w1.Triangle(posx, e2.EposY, e2.EPosXaddRadius/2, b1.BPosYaddHeight, randominWingHeight);
    } 
    if (chosenWing == "TrianglewithSmallRect") {
      w1.TrianglewithSmallRect(posx, e2.EposY, e2.EPosXaddRadius/2, b1.BPosYaddHeight, randominWingHeight);
    } 
    if (chosenWing == "NarrowCurve") {
      w1.NarrowCurve(posx, e2.EposY, e2.EPosXaddRadius/2, b1.BPosYaddHeight, randominWingHeightArc);
    } 
    if (chosenWing == "NarrowCurveBlock") {
      w1.NarrowCurveBlock(posx, e2.EposY, e2.EPosXaddRadius/2, b1.BPosYaddHeight, randominWingHeight);
    } 
    if (chosenWing == "FourPointTrapeziumBottomSkew") {
      w1.FourPointTrapeziumBottomSkew(posx, e2.EposY, e2.EPosXaddRadius/2, b1.BPosYaddHeight, randominWingHeight);
    } 
    if (chosenWing == "FourPointTrapeziumTopSkew") {
      w1.FourPointTrapeziumTopSkew(posx, e2.EposY, e2.EPosXaddRadius/2, b1.BPosYaddHeight, randominWingHeight);
    } 
    if (chosenWing == "FourPointTriangle") {
      w1.FourPointTriangle(posx, e2.EposY, e2.EPosXaddRadius/2, b1.BPosYaddHeight, randominWingHeight);
    } 

    ////////NOSE
    chosenNose = noseTypes[nose];

    if (chosenNose == "Triangle") {
      n1.Triangle(posx, b1.BNewY, b1.BRadius);
    }
    if (chosenNose == "TrianglewithNeedle") {
      n1.TrianglewithNeedle(posx, b1.BNewY, b1.BRadius, randomNeedleHeight);
    }
    if (chosenNose == "NarrowTriangle") {
      n1.NarrowTriangle(posx, b1.BNewY, b1.BRadius, randomNoseHeight);
    }
    if (chosenNose == "NarrowTrianglewithNeedle") {
      n1.NarrowTrianglewithNeedle(posx, b1.BNewY, b1.BRadius, randomNoseHeight);
    }
    if (chosenNose == "TriangleCone") {
      n1.TriangleCone(posx, b1.BNewY, b1.BRadius);
    }
    if (chosenNose == "TriangleConewithNeedle") {
      n1.TriangleConewithNeedle(posx, b1.BNewY, b1.BRadius, randomNeedleHeight);
    }
    if (chosenNose == "TwoEqualStackedTriangles") {
      n1.TwoEqualStackedTriangles(posx, b1.BNewY, b1.BRadius, randomNoseHeight);
    }
    if (chosenNose == "TwoEqualStackedTriangleswithNeedle") {
      n1.TwoEqualStackedTriangleswithNeedle(posx, b1.BNewY, b1.BRadius, randomNeedleHeight, randomNoseHeight);
    }
    if (chosenNose == "NarrowTrapeziumwithNeedle") {
      n1.NarrowTrapeziumwithNeedle(2, posx, b1.BNewY, b1.BRadius, randomNoseHeight2, randomNeedleHeight);
    }
    if (chosenNose == "CurvedTriangle") {
      n1.CurvedTriangle(posx, b1.BNewY, b1.BRadius, randomNoseHeight);
    }
  }
}
