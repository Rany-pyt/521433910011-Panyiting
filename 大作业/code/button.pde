class Button{

   PVector pos;


  Button(int x, int y) {
    pos = new PVector(x, y);
  }

  void show() {
    fill(0);
    textSize(42);
    textAlign(LEFT);
    String tip3 = "mode1  mode2" ;
    text(tip3, pos.x, pos.y);
  }

}
