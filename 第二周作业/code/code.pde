void setup() {
  size(1000, 800);
  background(10, 10, 10, 10);
}
void draw() {
  float xx = random(width);
  float yy = random( height);
  float dia = random(30, 70);
  float alpha = random(180, 255);

  if (mousePressed) {
    rectMode(CENTER);
    fill(226,32,53, alpha);
    noStroke();
    ellipse(xx-30, yy-30, dia, dia);

    fill(250, 250, 60, alpha);
    noStroke();
    rect(xx-65, yy-65, dia, dia, 2, 36, 36, 36);

    fill(250, 100, 20, alpha);
    noStroke();
    rect(xx+5, yy-65, dia, dia, 36, 2, 36, 36);

    fill(250, 100, 20, alpha);
    noStroke();
    rect(xx-65, yy+5, dia, dia, 36, 36, 36, 2);

    fill(250, 2250, 60, alpha);
    noStroke();
    rect(xx+5, yy+5, dia, dia, 36, 36, 2, 36);
  } else {

    noStroke();
    fill(10, 10, 10, 10);
    rectMode(CORNER);
    rect(0, 0, width, height);
  }
}
