
float x1=25;
float y1=25;
float speed1 = 4;
float speed3 = 4;

float x2=0 ;
float y2=0 ;

int speed2=9;
int state=0;

float x3=300;
float y3=300;
float s4=-3;
float s5=2;



void setup() {
  size(500, 500);
}

void draw() {
  background(255);

  stroke(0);
  strokeWeight(2);
  fill(220);
  rect(325, 25, 50, 50);
  fill(190);
  rect(275, 200, 150, 100);
  rect(475, 300, 50, 100);
  fill(130);
  rect(25, 475, 50, 50);
  rect(75, 100, 50, 100);


  //laihuitiantiao
  rectMode(CENTER);
  stroke(70);
  fill(70);
  rect(x1+25, 200, 50, 100);
  stroke(100);
  fill(100);
  rect(400, y1, 100, 100);
  x1=x1+speed1;
  y1=y1+speed3;
  if (y1>height-50 || y1<0) {
    speed3=speed3*-1;
  }

  if ( x1> width-50 || x1<0) {
    speed1=speed1*-1;
  }

  //zaisizhouyundong
  stroke(55);
  fill(55);
  rect(x2+25, y2+25, 50, 50);

  if (state==0) {
    x2=x2+speed2;
    if (x2>width-50) {
      x2= width-50;
      state=1;
    }
  } else if (state==1) {
    y2=y2+speed2;
    if (y2>height-50) {
      y2=height -50;
      state=2;
    }
  } else if (state==2) {
    x2=x2-speed2;
    if (x2<0) {
      x2=0;
      state=3;
    }
  } else if (state==3) {
    y2=y2-speed2;
    if (y2<0) {
      y2=0;
      state=0;
    }
  }

  strokeWeight(5);
  stroke(0);
  line(50, 0, 50, height);
  line(450, 0, 450, height);
  line(0, 50, width, 50);
  line(0, 450, width, 450);

  strokeWeight(3);
  line(0, 150, width, 150);
  line(0, 250, width, 250);
  line(350, 0, 350, height);
  line(450, 0, 450, height);
  line(450, 350, 500, 350);
  line(200, 150, 200, 250);
  
  
  line(x3,250,x3,450);
  line(50,y3,350,y3);
  fill(150);
  rect((x3+350)/2,(250+y3)/2,350-x3,y3-250);
  fill(110);
  rect((50+x3)/2,(y3+450)/2,x3-50,450-y3);
  
  x3=x3+s4;
  y3=y3+s5;
  
  
  if(x3>350 || x3<50){
  s4=s4*-1;
  }
  if(y3>450 || y3<250){
  s5=s5*-1;
  }
  
}
