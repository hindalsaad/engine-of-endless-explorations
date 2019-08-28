String[] bgTypes = {"drawPlain", "drawStars", "drawBlueUniverse", "drawRedUniverse", "drawYellowUniverse"};
String chosenBG;

void createBG() {
  chosenBG = bgTypes[BG];

  for (int i = 0; i < bgTypes.length; i ++) {
    //println(bgTypes[i]);
    if (chosenBG == "drawPlain") {
      drawPlain();
    } 
    if (chosenBG == "drawStars") {
      drawStars();
    }  
    if (chosenBG == "drawBlueUniverse") {
      drawBlueUniverse();
    }
    if (chosenBG == "drawRedUniverse") {
      drawRedUniverse();
    }
    if (chosenBG == "drawYellowUniverse") {
      drawYellowUniverse();
    }
  }
}

void drawPlain() {
  noStroke();
  fill(Black);
  rect(0, 0, width, height);
  //image(papertexture, 0, 0);
}

void drawStars() {
  drawPlain();
  int starCount = int(random(200, 350));
  for (int i = 0; i < starCount; i++) {
    float starX = random(width);
    float starY = random(height);
    float starRadius = random(0.5,1.5);
    float starAlpha = random(65,85);
    noStroke();
    fill(LightGrey, starAlpha);
    ellipse(starX, starY, starRadius, starRadius);
  }
}

void drawBlueUniverse() {
  drawStars();
  noStroke();
  fill(LightBlue);
  float planet = random(height, height*1.5);
  float position = random (width);
  ellipse(position, 0, planet, planet);
}

void drawRedUniverse() {
  drawStars();
  noStroke();
  fill(DarkRed);
  float planet = random(height, height*1.5);
  float position = random (width);
  ellipse(position, 0, planet, planet);
}

void drawYellowUniverse() {
  drawStars();
  noStroke();
  fill(DarkYellow);
  float planet = random(height, height*1.5);
  float position = random (width);
  ellipse(position, 0, planet, planet);
}
