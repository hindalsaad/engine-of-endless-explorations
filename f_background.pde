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

  int starsX = ceil(width * 0.5);
  int starsY = ceil(height * 0.5);
  int starsWidth = ceil(width * 0.9);
  int starsHeight = ceil(height * 0.9);

  pushMatrix();
  noStroke();
  ellipseMode(RADIUS);
  translate(starsX, starsY);

  int starCount = ceil(random(200, 350));
  for (int i = 0; i < starCount; i++) {
    float starX = starsWidth * 0.5 * random(-0.9, 0.9);
    float starY = starsHeight * 0.5 * random(-0.9, 0.9);
    float starRadius = min(starsWidth, starsHeight) * 0.5 * random(0.0005, 0.005);
    float starAlpha = 75 * (1 + random(-0.5, 0.5));
    noStroke();
    fill(LightGrey, starAlpha);
    ellipse(starX, starY, starRadius, starRadius);
  }
  popMatrix();
  ellipseMode(DIAMETER);
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
