////COLORS

color LightRed = color(200, 100, 95);
color DarkRed = color(200, 70, 60);

color LightBlue = color(120, 140, 150);
color DarkBlue = color(75, 100, 130);

color LightYellow = color(230, 210, 90);
color DarkYellow = color(200, 180, 70);

color LighterGrey = color(200, 200, 200);
color LightGrey = color(150, 150, 150);
color MediumGrey = color(100, 100, 100);
color DarkGrey = color(50, 50, 50);
color DarkerGrey = color(35, 35, 35);

//LIGHT SETTINGS THAT WORK WELL
//color LighterGrey = color(225, 225, 225);
//color LightGrey = color(200, 200, 200);
//color MediumGrey = color(175, 175, 175);
//color DarkGrey = color(150, 150, 150);
//color DarkerGrey = color(100, 100, 100);

color Black = color(0);
color White = color(255);

int colorChoice = 0;

void colorXRay () {
  strokeWeight(0.5);
  fill(Black);
  stroke(LightGrey);
}

void colorNoseOne() {
  strokeWeight(1);

  if (colorChoice == 0) {
    fill(DarkGrey);
    stroke(DarkGrey);
  }

  if (colorChoice == 1) {
    fill(MediumGrey);
    stroke(MediumGrey);
  }

  if (colorChoice == 2) {
    fill(DarkGrey);
    stroke(DarkGrey);
  }

  if (colorChoice == 3) {
    fill(MediumGrey);
    stroke(MediumGrey);
  }

  if (colorChoice == 4) {
    fill(DarkGrey);
    stroke(DarkGrey);
  }

  if (colorChoice == 5) {
    fill(MediumGrey);
    stroke(MediumGrey);
  }

  if (colorChoice == 6) {
    fill(DarkGrey);
    stroke(DarkGrey);
  }

  if (colorChoice == 7) {
    fill(MediumGrey);
    stroke(MediumGrey);
  }
}

void colorNoseTwo() {
  strokeWeight(1);

  if (colorChoice == 0) {
    fill(MediumGrey);
    stroke(MediumGrey);
  }

  if (colorChoice == 1) {
    fill(LightGrey);
    stroke(LightGrey);
  }

  if (colorChoice == 2) {
    fill(MediumGrey);
    stroke(MediumGrey);
  }

  if (colorChoice == 3) {
    fill(LightGrey);
    stroke(LightGrey);
  }

  if (colorChoice == 4) {
    fill(MediumGrey);
    stroke(MediumGrey);
  }

  if (colorChoice == 5) {
    fill(LightGrey);
    stroke(LightGrey);
  }

  if (colorChoice == 6) {
    fill(MediumGrey);
    stroke(MediumGrey);
  }

  if (colorChoice == 7) {
    fill(LightGrey);
    stroke(LightGrey);
  }
}

void colorWing() {
  //strokeWeight(0.25);
  if (colorChoice == 0) {
    noStroke();
    fill(DarkGrey);
    //stroke(DarkGrey);
  }

  if (colorChoice == 1) {
    noStroke();
    fill(MediumGrey);
    //stroke(MediumGrey);
  }

  if (colorChoice == 2) {
    noStroke();
    fill(DarkGrey);
    //stroke(DarkGrey);
  }

  if (colorChoice == 3) {
    noStroke();
    fill(MediumGrey);
    //stroke(MediumGrey);
  }

  if (colorChoice == 4) {
    noStroke();
    fill(DarkGrey);
    //stroke(DarkGrey);
  }

  if (colorChoice == 5) {
    noStroke();
    fill(MediumGrey);
    //stroke(MediumGrey);
  }

  if (colorChoice == 6) {
    noStroke();
    fill(DarkGrey);
    //stroke(DarkGrey);
  }

  if (colorChoice == 7) {
    noStroke();
    fill(MediumGrey);
    //stroke(MediumGrey);
  }
}

void colorBodyOne() {
  strokeWeight(0.1);

  if (colorChoice == 0) {
    fill(MediumGrey);
    stroke(MediumGrey);
  }

  if (colorChoice == 1) {
    fill(DarkerGrey);
    stroke(DarkerGrey);
  }

  if (colorChoice == 2) {
    fill(MediumGrey);
    stroke(MediumGrey);
  }

  if (colorChoice == 3) {
    fill(DarkerGrey);
    stroke(DarkerGrey);
  }

  if (colorChoice == 4) {
    fill(MediumGrey);
    stroke(MediumGrey);
  }

  if (colorChoice == 5) {
    fill(DarkerGrey);
    stroke(DarkerGrey);
  }

  if (colorChoice == 6) {
    fill(MediumGrey);
    stroke(MediumGrey);
  }

  if (colorChoice == 7) {
    fill(DarkerGrey);
    stroke(DarkerGrey);
  }
}

void colorBodyTwo() {
  strokeWeight(0.1);

  if (colorChoice == 0) {
    fill(LightGrey);
    stroke(LightGrey);
  }

  if (colorChoice == 1) {
    fill(LightGrey);
    stroke(LightGrey);
  }

  if (colorChoice == 2) {
    fill(LightGrey);
    stroke(LightGrey);
  }

  if (colorChoice == 3) {
    fill(LightGrey);
    stroke(LightGrey);
  }

  if (colorChoice == 4) {
    fill(LightGrey);
    stroke(LightGrey);
  }

  if (colorChoice == 5) {
    fill(LightGrey);
    stroke(LightGrey);
  }

  if (colorChoice == 6) {
    fill(DarkRed);
    stroke(DarkRed);
  }

  if (colorChoice == 7) {
    fill(DarkRed);
    stroke(DarkRed);
  }
}

void colorEngine() {
  //strokeWeight(0.1);

  if (colorChoice == 0) {
    noStroke();
    fill(DarkGrey);
    //stroke(DarkGrey);
  }

  if (colorChoice == 1) {
    noStroke();
    fill(MediumGrey);
    //stroke(MediumGrey);
  }

  if (colorChoice == 2) {
    noStroke();
    fill(DarkBlue);
    //stroke(DarkBlue);
  }

  if (colorChoice == 3) {
    noStroke();
    fill(DarkBlue);
    //stroke(DarkBlue);
  }

  if (colorChoice == 4) {
    noStroke();
    fill(DarkGrey);
    //stroke(DarkGrey);
  }

  if (colorChoice == 5) {
    noStroke();
    fill(MediumGrey);
    //stroke(MediumGrey);
  }

  if (colorChoice == 6) {
    noStroke();
    fill(DarkGrey);
    //stroke(DarkGrey);
  }

  if (colorChoice == 7) {
    noStroke();
    fill(MediumGrey);
    //stroke(MediumGrey);
  }
}

void colorSmokeOne() {
  if (colorChoice == 0) {
    noStroke();
    fill(MediumGrey);
  }
  if (colorChoice == 1) {
    noStroke();
    fill(LightGrey);
  }

  if (colorChoice == 2) {
    noStroke();
    fill(MediumGrey);
  }
  if (colorChoice == 3) {
    noStroke();
    fill(LightGrey);
  }

  if (colorChoice == 4) {
    noStroke();
    fill(DarkYellow);
  }
  if (colorChoice == 5) {
    noStroke();
    fill(DarkYellow);
  }

  if (colorChoice == 6) {
    noStroke();
    fill(MediumGrey);
  }
  if (colorChoice == 7) {
    noStroke();
    fill(LightGrey);
  }
}

void colorSmokeTwo() {
  if (colorChoice == 0) {
    noStroke();
    fill(LightGrey);
  }
  if (colorChoice == 1) {
    noStroke();
    fill(LighterGrey);
  }

  if (colorChoice == 2) {
    noStroke();
    fill(LightGrey);
  }
  if (colorChoice == 3) {
    noStroke();
    fill(LighterGrey);
  }
  if (colorChoice == 4) {
    noStroke();
    fill(LightYellow);
  }
  if (colorChoice == 5) {
    noStroke();
    fill(LightYellow);
  }
  if (colorChoice == 6) {
    noStroke();
    fill(LightGrey);
  }
  if (colorChoice == 7) {
    noStroke();
    fill(LighterGrey);
  }
}


////SHAPES

void trapeziumtop(float topX, float topY, float bottomXShift, float Height, float topWidth) { 
  beginShape();
  // top left
  vertex(topX, topY);
  // bottom left
  vertex(topX - bottomXShift, topY + Height);
  // bottom right
  vertex(topX + (topWidth+bottomXShift), topY + Height);
  // top right
  vertex(topX + topWidth, topY);
  endShape(CLOSE);
}


void trapeziumbottom(float bottomX, float bottomY, float topXShift, float Height, float bottomWidth) { 
  beginShape();
  // top left
  vertex(bottomX + topXShift, bottomY - Height);
  // bottom left
  vertex(bottomX, bottomY);
  // bottom right
  vertex(bottomX - bottomWidth, bottomY);
  // top right
  vertex(bottomX - (bottomWidth+topXShift), bottomY - Height);
  endShape(CLOSE);
}
