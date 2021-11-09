String restart;
boolean change;
//float dx;
//float dy;

void setup() {
  size(1000, 800);
  background(0);
  fill(250, 250, 110);
  rectMode(CENTER);
  rect(80, 100, 50, 50);
  fill(255, 0, 255);
  rect(80, 150, 50, 50);
  restart="press 'R' to restart";
  fill(255);
  textSize(28);
  text(restart, 50, 50);
  //dx=mouseX;
  //dy=mouseY;
}

void draw() {
  strokeWeight(7);
  stroke(255);
  if (mousePressed&&mouseX>55&&mouseX<102&&mouseY>75&&mouseY<125) {
    change=true;//stroke(map(abs(dx-0), 800, 255, 0, 255), 0, map(abs(dy-0), 800, 255, 0, 255));
  }
  if (mousePressed&&mouseX>55&&mouseX<105&&mouseY>125&&mouseY<175) {
    change=false; //stroke( 0, map(abs(dx-0), 800, 255, 0, 255), map(abs(dy-0), 800, 255, 0, 255));
  }

  if (change) {
    stroke( map(abs(mouseX-0), 800, 255, 0, 255), map(abs(mouseY-0), 800, 255, 0, 255), 0);
  } else {
    stroke(map(abs(mouseX-0), 800, 255, 0, 255), 0, map(abs(mouseY-0), 800, 255, 0, 255));
  }

  if (mousePressed) {
    line(mouseX, mouseY-20, mouseX, mouseY+50);
    line(mouseX-18, mouseY, mouseX+18, mouseY);
  }
  if ((keyPressed == true) && (key == 'r')) {
    background(0);
    noStroke();
    fill(250, 250, 110);
    rectMode(CENTER);
    rect(80, 100, 50, 50);
    fill(255, 0, 255);
    rect(80, 150, 50, 50);
    restart="press 'R' to restart";
    fill(255);
    textSize(28);
    text(restart, 50, 50);
  }
}
