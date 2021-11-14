class Numbers{

   PVector pos;


  Numbers(int x, int y) {
    pos = new PVector(x, y);
  }

  void show() {
    fill(0);
    textSize(48);
    textAlign(LEFT);
    String tip2 = "←Type numbers here. " ;
    text(tip2, pos.x, pos.y);
  }

}
