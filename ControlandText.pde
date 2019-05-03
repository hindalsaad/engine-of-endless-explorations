int nose = 0;
int body = 0;
int stand = 0;
int wing = 0;
int engine = 0;
int smoke = 0;
int BG = 0;

void controlElement () {
  if (key == 'c' || key == 'C') {
    colorChoice ++;
    if (colorChoice>7) {
      colorChoice = 0;
    }
  }

  if (key == 'x' || key == 'X') {
    BG ++;
    if (BG>bgTypes.length-1) {
      BG = 0;
    }
  }

  if (key == 'n' || key == 'N') {
    chosenColor = "XRay";
    BG = 0;
    nose ++;

    if (nose>noseTypes.length-1) {
      nose = 0;
    }
  }

  if (key == 'b' || key == 'B') {
    chosenColor = "XRay";
    BG = 0;
    body ++;

    if (body>bodyTypes.length-1) {
      body = 0;
    }
  }

  if (key == 'w' || key == 'W') {
    chosenColor = "XRay";
    BG = 0;
    wing ++;

    if (wing>wingTypes.length-1) {
      wing = 0;
    }
  }

  if (key == 'e' || key == 'E') {
    chosenColor = "XRay";
    BG = 0;
    engine ++;

    if (engine>engineTypes.length-1) {
      engine = 0;
    }
  }

  if (key == 's' || key == 'S') {
    chosenColor = "XRay";
    BG = 0;
    smoke ++;

    if (smoke>smokeTypes.length-1) {
      smoke = 0;
    }
  }
}

void StyleText() {

  if (key == 'n' || key == 'N') {
    fill(LightGrey);
    textAlign(CENTER);
    text("YOU ARE NOW CHANGING THE NOSE TO STYLE #" + nose, width/2, border);
  }

  if (key == 'w' || key == 'W') {
    fill(LightGrey);
    textAlign(CENTER);
    text("YOU ARE NOW CHANGING THE WING TO STYLE #" + wing, width/2, border);
  }

  if (key == 'b' || key == 'B') {
    fill(LightGrey);
    textAlign(CENTER);
    text("YOU ARE NOW CHANGING THE BODY TO STYLE #" + body, width/2, border);
  }

  if (key == 's' || key == 'S') {
    fill(LightGrey);
    textAlign(CENTER);
    text("YOU ARE NOW CHANGING THE SMOKE TO STYLE #" + smoke, width/2, border);
  }

  if (key == 'e' || key == 'E') {
    fill(LightGrey);
    textAlign(CENTER);
    text("YOU ARE NOW CHANGING THE ENGINE TO STYLE #" + engine, width/2, border);
  }
}

void RocketIterationCounter () {
  fill(DarkGrey);
  textAlign(LEFT);
  text(rocketCounter+" OUT OF INFINTY", border, height - border);
}
