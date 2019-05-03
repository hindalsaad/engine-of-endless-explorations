
PFont text;

float baseY;
float xpos;
float ypos;
float border;

Rocket r = new Rocket();

int rocketCounter = 0;
Boolean randominKeyPress = true;

void setup() {
  size(720, 720); 
  //size(1440, 1440); 
  pixelDensity(2);
  smooth(8);

  text = createFont("Akkurat Light Pro", width/50);
  textFont(text);

  baseY =  height - height/10;
  xpos = width/2; 
  ypos = baseY;
  border = width/30;

  // create a single rocket instance
  r.Construct(int(xpos), ypos, randominKeyPress);
}

void draw() {
  //to allow the code to loop
}

void keyPressed() {

  //style of element - building of rocket
  //activates xray
  if (key == 'c' || key == 'x' || key == 'n' ||key == 'b'||key == 'w'||key == 'e'||key == 's') { 
    randominKeyPress = false;
    controlElement();
    r.Construct(int(xpos), ypos, randominKeyPress);
    StyleText();
  }

  //normal mode
  //iteration loop
  // backspace
  if (key == 32) {
    randominKeyPress = true;
    r.Construct(int(xpos), ypos, randominKeyPress);
    rocketCounter ++;
    RocketIterationCounter();
  }

  //saves the frames
  if (keyCode == ALT) {
    saveFrame("savedRockets/"+day()+":"+month()+"/"+hour()+"."+minute()+"."+second()+".png");
  }
}

void keyReleased() {
  chosenColor = "Normal";
}
