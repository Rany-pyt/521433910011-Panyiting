class Ball {
  float diam=10;
  float centX, centY;
  float speed;

  Ball(float x, float y, float d) {
    centX=x=random(1000);
    centY=y=random(800);
    diam=d;
    speed=diam/10;
  }

  void grow() {
    for (Ball b : tinyBall) {
      if (b != this) {
        if (sqrt((b.centX-this.centX)
          *(b.centX-this.centX)
          +(b.centY-this.centY)
          *(b.centY-this.centY))<=(b.diam+this.diam)*0.4) {
          if (diam <= 400) {
            noStroke();
            fill(255, 60);
            ellipse(centX, centY, diam, diam);
            diam += 5;
          }
        } else if (sqrt((b.centX-this.centX)
          *(b.centX-this.centX)
          +(b.centY-this.centY)
          *(b.centY-this.centY))>=(b.diam+this.diam)*0.8) {
          if (this.diam <= 100) {
            noStroke();
            fill(255, 60);
            ellipse(centX, centY, diam, diam);
            diam += 5;
          }
        } else {
          if (this.diam <= 200) {
            noStroke();
            fill(255, 60);
            ellipse(centX, centY, diam, diam);
            diam += 5;
          }
        }
      }
    }
  }


  void move() {
    for (Ball b : tinyBall) {
      if (b!=this);
      this.centY=centY+speed;
    }
  }



  void perish() {
    for (Ball b : tinyBall) {
      if (b != this) {
        if (this.diam>400) {
          stroke(0, 180);
          fill(0, 180);
          ellipse(this.centX, this.centY, diam, diam);
          diam=diam-5;
        }
      }
    }
  }
}
