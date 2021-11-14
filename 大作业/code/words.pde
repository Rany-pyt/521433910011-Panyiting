class Words {

  PVector pos;


  Words(int x, int y) {
    pos = new PVector(x, y);
  }

  void show() {
    fill(0);
    textSize(48);
    textAlign(RIGHT);
    String tip1 = "←Type title letters here." ;
    text(tip1, pos.x, pos.y);
  }
}
