class Rain {
  float x, y, vx, vy, size;

  Rain() {
    x= random(0, width);
    y = random(200, height);
    vx = 0;
    vy = random(12,16);
    size = vx;
  }

  void show() {
    fill(rainColor);
    rect(x, y, 2, size + 9);
  }
  void act() {
    y += vy;
    if (x > width+size) {
      x = -size;
    }
    if (y > height+size) {
      y = -size;
    }
  }
}
