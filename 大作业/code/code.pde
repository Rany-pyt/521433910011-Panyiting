Words word1;
Numbers number1;
Button button1;

boolean change;
float r;
int n ;
int i;
float a;
float b ;
float x1 ;
float y1 ;
float x2 ;
float y2 ;
char letter;
String words = " ";
char number;
String colours = " ";

void setup() {
  size(1200, 1000);
  strokeWeight(1.5);
  frameRate(2);
  word1= new Words(1170, 170);
  number1= new Numbers(710, 880);
  button1= new Button(745, 570);
}

void draw() {
  background(random(0, 80), random(0, 80), random(0, 80), random(0, 80));


  stroke(255);
  line(705, 0, 705, height);
  fill(255);
  rect(700, 0, 500, 1000);
  fill(255, 0, 0);
  rect(750, 430, 100, 100);
  fill(0, 0, 255);
  rect(880, 430, 100, 100);
  word1.show();
  number1.show();
  button1.show();

  textSize(96);
  textAlign(CENTER);
  fill(255);
  text(words, 0, 70, 695, 250);
  textSize(96);
  text(colours, 0, 800, 695, 920);


  if (mousePressed&&mouseX>=750&&mouseX<=850&&mouseY>=430&&mouseY<=530) {
    change=true;
  }
  if (mousePressed&&mouseX>=880&&mouseX<=980&&mouseY>=430&&mouseY<=530) {
    change=false;
  }

  if (change) {

    translate(1200/3.5, 500);
    r = 280;
    n = 100;
    for (i=0; i<n; i++) {
      a = i * 2 * PI/n;
      b = random(40, 100)* 0.03 * a;
      x1 = r * cos(a);
      y1 = r * sin(a);
      x2 = r * cos(b);
      y2 = r * sin(b);
      stroke( random(100, 255), random(100, 255), random(100, 255));
      line(x1, y1, x2, y2);
    }
  } else {

    translate(1200/3.5, 500);
    r = 280;
    n = 100;
    for (i=0; i<n; i++) {
      a = i * 2 * PI/n;
      b = frameCount* 0.03 * a;
      x1 = r * cos(a);
      y1 = r * sin(a);
      x2 = r * cos(b);
      y2 = r * sin(b);
      stroke( random(100, 255), random(100, 255), random(100, 255));
      line(x1, y1, x2, y2);
    }
  }
}

void keyTyped() {
  if ((key >= 'A' && key <= 'z') || key == ' ') {
    letter = key;
    words = words + key;
  }
  //println(key);
  if ((key >='0' && key<='9')|| key==':'|| key == '.') {
    number = key;
    colours= colours + key;
  }
}
